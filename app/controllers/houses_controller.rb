class HousesController < ApplicationController
  # GET /
  def index
    @houses = House.all
  end
  # Rails automatically loads the associated view:
  #  app/views/houses/index.html.erb
  # The @houses variable is shared with the view.

  # GET /houses/:id
  def show
    @house = House.find(params[:id])
  end
  # Rails automatically loads the associated view:
  #  app/views/houses/show.html.erb
  # The @house variable is shared with the view.
end
