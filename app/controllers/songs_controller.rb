class SongsController < ApplicationController
  def show
    song = Song.find(params[:id])
    render json: song
  end

  def new
    render json: "hi"
  end

  def taco
    render json: { x: User.all, q: Topic.all, c: Sub.first.topics }
  end
end
