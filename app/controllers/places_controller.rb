class PlacesController < ApplicationController
  
  def index
    @places = Place.all
  end

  def show
    @id = params["id"]
    @place = Place.find_by({"id" => @id})
    @entries = Entry.where({"place_id" => @place["id"]})
  end

end
