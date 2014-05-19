class PicturesController < ApplicationController

  def show
    @picture = Picture.find_by({ :id => params[:id] })
  end

  def index
    @list_of_pictures = Picture.all
  end

  def new
    @picture=Picture.new
    @picture.caption= params[:caption]
    @picture.source= params[:source]
    @picture.save

    redirect_to("http://localhost:3000/create_picture")
  end

  def create
    redirect_to("http://localhost:3000/all_pictures")
  end

  def delete

  end


#   def update
#     @picture=Picture.find_by({:id => params[:id]})
#     @picture.caption= params[:caption]
#     @picture.source= params[:source]
#     @picture.save
#   end



end
