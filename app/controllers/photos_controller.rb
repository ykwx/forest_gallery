class PhotosController < ApplicationController

  respond_to :html
  layout "application"
  
  def index
    @photos = Photo.where(published: true).paginate(:page => params[:page], :per_page => 2).order("created_at DESC")
  end
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
    else 
      "new"
    end
  end
  
  def show
    @photo = Photo.find(params[:id])
    @last = Photo.last
    @next = Photo.where("id > ?", @photo.id).where(published: true).pluck(:id).first
    @previous = Photo.where("id < ?", @photo.id).where(published: true).pluck(:id).last
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
  
  private

  def photo_params
    params.require(:photo).permit(:first_name, :last_name, :country, :city, :twitter, :website_url, :email_address, :image, :filepicker_url)
  end

end


