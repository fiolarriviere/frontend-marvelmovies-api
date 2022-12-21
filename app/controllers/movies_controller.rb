class MoviesController < ApplicationController
  require "rest-client"
  require "json"

  def index
    result = RestClient.get("http://localhost:3001/api/v1/movies")
    @movies = JSON.parse(result)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
