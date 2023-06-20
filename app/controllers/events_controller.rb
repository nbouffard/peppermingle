class EventsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :show

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    authorize @event

    if @event.save
      redirect_to event_path(@event), alert: 'Event successfully created!'
    else
      render :new, alert: 'Event cannot be created!'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :paid, :recipe_id)
  end
end
