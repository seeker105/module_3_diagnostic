class FinderController < ApplicationController
  def index

  end

  def search
    zipcode = params[:q].gsub("Search by zip...", "")
    
  end
end
