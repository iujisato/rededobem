class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.valid?
      @event.save
      flash[:success] = 'success'
      redirect_to @event
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      flash[:success] = 'success'
      redirect_to @event
    else
      flash[:danger] = 'error'
      render :edit
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :start_at,
      :type,
      :mandatory,
      :description
    )
  end

  def set_event
    @event = User.find_by(id: params[:id])
  end
end
