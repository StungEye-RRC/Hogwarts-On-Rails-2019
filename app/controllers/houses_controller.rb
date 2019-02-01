class HousesController < ApplicationController

  # GET /houses
  # GET /
  def index
    @houses = House.order(:name)
  end
  # The associated view is auto-loaded: app/views/houses/index.html.erb
  # Instance variables like @houses are shared with the view.

  # GET /houses/:id
  def show
    @house = House.includes(:students, :teachers).find(params[:id])
  end
  # The associated view is auto-loaded: app/views/houses/show.html.erb
  # The @house instance variable will be shared with the view.

  def about
    # Static Page
  end
end
