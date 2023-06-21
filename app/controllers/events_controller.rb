class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :authenticate_user!
  before_action :set_event, only: %i[show destroy]

  def show
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

  def destroy
    authorize @event

    if @event.destroy
      redirect_to event_path, alert: 'Event successfully deleted!' # change the route to index when there is an index
    else
      redirect_to event_path(@event), alert: 'Event cannot be deleted!'
    end
  end

  def set_event
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :paid, :recipe_id)
  end
end
