class PicturesController < ApplicationController

  def show
    @picture = Picture.find_by({ :id => params[:id] })

  end

  def index
    @list_of_pictures = Picture.all
  end

  def create
    @picture=Picture.new
    @picture.caption= params[:caption]
    @picture.source= params[:source]
    @picture.save

    redirect_to("http://localhost:3000/all_pictures")
  end

  def new

  end

  def destroy
    @picture = Picture.find_by({ :id => params[:id] })
    @picture.destroy
    # /delete_picture/<%= @picture.id %>>
    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
    @picture = Picture.find_by({ :id => params[:id] })
    # @picture = Picture.find(params[:id])
  end

  def update
    # @picture = Picture.find_by({:id => params[:id]})
    @picture.caption= params[:caption]
    @picture.source= params[:source]
    @picture.save

    redirect_to("http://localhost:3000/all_pictures")

  end

end
