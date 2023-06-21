class EventsController < ApplicationController
  before_action :get_event, only: [:edit, :update]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @events = policy_scope(Event)
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.update(event_params)
    redirect_to event_path(@event)
  end

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

  def get_event
    @event = Event.find(params[:id])
  end
end
