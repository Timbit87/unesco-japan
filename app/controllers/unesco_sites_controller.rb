class UnescoSitesController < ApplicationController
  before_action :set_unesco_site

  def index
    @unesco_sites = Unesco_site.all
    render json: @unesco_sites
  end

  def create
    unesco_site = Unesco_site.create!(unesco_sites_params)
    if unesco_site
      render json: unesco_site
    else
      render json: unesco_site.errors
    end
  end

  def show
    @unesco_site
  end

  private

  def set_unesco_site
    @unesco_site = Unesco_site.find(params[:id])
  end

  def unesco_sites_params
    params.require(:unesco_site).permit()
  end
end
