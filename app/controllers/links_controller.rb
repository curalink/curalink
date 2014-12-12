class LinksController < ApplicationController
    def new
    end

    def create
        @link = Link.new(link_params)
        @link.save
        redirect_to @link
    end

    def show
        @link = Link.find(params[:id])
    end
private
  def link_params
    params.require(:link).permit(:title, :uri)
  end
end
