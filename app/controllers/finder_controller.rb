require_relative '../services/finder_service'

class FinderController < ApplicationController
  def index

  end

  def search
    zipcode = params[:q].gsub("Search by zip...", "")
    @stations = FinderService.new.get_electric_and_propane(zipcode)
  end
end
