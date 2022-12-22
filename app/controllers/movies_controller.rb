class MoviesController < ApplicationController
  require "rest-client"
  require "json"

  def index
    result = RestClient.get("http://localhost:3001/api/v1/movies")
    @movies = JSON.parse(result)
  end

  def show
    result = RestClient.get("http://localhost:3001/api/v1/movies/#{params[:id]}")
    @movies = JSON.parse(result)
  end

  def new
  end

  def create
    result = RestClient.post("http://localhost:3001/api/v1/movies", { 'name' => params["name"], 'director' => params["director"] }.to_json, :content_type => :json, accept: => :json)

    if result.code == 201
      redirect_to "/movies/new", status: :unprocessable_entity
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
