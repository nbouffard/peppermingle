class EventsController < ApplicationController
  before_action :authenticate_user!

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    authorize @event

    if @event.save
      redirect_to @event, alert: 'Event successfully created!'
    else
      render :new, alert: 'Event cannot be created!'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :paid?)
  end
end
