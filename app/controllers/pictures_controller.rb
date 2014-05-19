class PicturesController < ApplicationController

  def show
    @picture = Picture.find_by({ :id => params[:id] })
  end

  def index
    @list_of_pictures = Picture.all
  end

  def new

  end

  def create
    @picture=Picture.new
    @picture.caption= params[:caption]
    @picture.source= params[:source]
    @picture.save

    redirect_to("http://localhost:3000/create_picture")

  end












#   def update
#     @picture=Picture.find_by({:id => params[:id]})
#     @picture.caption= params[:caption]
#     @picture.source= params[:source]
#     @picture.save
#   end



end
