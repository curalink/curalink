class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    @link.save ? redirect_to(@link) : render(:new)
  end

  def show
      @link = Link.find(params[:id])
  end

  def index
    search = params[:search]
    if search.blank?
      @links = Link.order("id DESC").all
    else
      links = Link.arel_table
      @links1 = Link.where(links[:title].matches("%#{search}%"))
      @links2 = Link.where(links[:uri].matches("%#{search}%"))
      @links = (@links1 + @links2).uniq
    end
  end

    private
  def link_params
    params.require(:link).permit(:title, :uri)
  end
end
