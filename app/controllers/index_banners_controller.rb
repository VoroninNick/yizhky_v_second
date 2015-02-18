class IndexBannersController < ApplicationController
  before_action :set_index_banner, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @index_banners = IndexBanner.all
    respond_with(@index_banners)
  end

  def show
    respond_with(@index_banner)
  end

  def new
    @index_banner = IndexBanner.new
    respond_with(@index_banner)
  end

  def edit
  end

  def create
    @index_banner = IndexBanner.new(index_banner_params)
    @index_banner.save
    respond_with(@index_banner)
  end

  def update
    @index_banner.update(index_banner_params)
    respond_with(@index_banner)
  end

  def destroy
    @index_banner.destroy
    respond_with(@index_banner)
  end

  private
    def set_index_banner
      @index_banner = IndexBanner.find(params[:id])
    end

    def index_banner_params
      params.require(:index_banner).permit(:name, :position, :published)
    end
end
