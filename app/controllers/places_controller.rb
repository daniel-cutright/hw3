class PlacesController < ApplicationController
  
  def index
    @places = Place.all
  end

  def show
    @id = params["id"]
    @place = Place.find_by({"id" => @id})
    @entries = Entry.where({"place_id" => @place["id"]})
  end

  def new
  end

  def create
    place = Place.new
    place["name"] = params["name"]
    place.save
    redirect_to "/places"
  end

end
