class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
  end
  
  def show
    @photo = Photo.find(params[:id])
    @last = Photo.last
    @next = Photo.find(@photo.id + 1) unless @photo.id == @last.id
    @previous = Photo.find(@photo.id - 1) unless @photo.id == 1
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end
  
  def update
    @photo = Photo.find(params[:id])
    @photo.update_attributes(params[:photo])    
  end
  
  def destroy
    @photo = Photo.find(params[:id]).destroy
  end

end
