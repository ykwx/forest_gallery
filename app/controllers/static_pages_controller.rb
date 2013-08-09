class StaticPagesController < ApplicationController

  respond_to :html
  layout "application"

  def index
    @photos = Photo.where(published: true).order("created_at DESC").limit(4)
  end

  def holding
  end

end
