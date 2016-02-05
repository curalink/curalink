class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    @link.save ? redirect_to @link : render 'new'
  end

  def show
      @link = Link.find(params[:id])
  end

  def index
      @links = Link.all
  end
private
  def link_params
    params.require(:link).permit(:title, :uri)
  end
end
