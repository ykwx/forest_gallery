class StaticPagesController < ApplicationController

  def index
    @photos = Photo.where(published: true).order("created_at DESC").limit(4)
  end

  def holding
  end

end
