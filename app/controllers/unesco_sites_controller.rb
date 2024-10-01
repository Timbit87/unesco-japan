class UnescoSitesController < ApplicationController
  before_action :set_unesco_site

  def index
    @unesco_sites = Unesco_sites.all
    render json: @unesco_sites
  end

  def show
    @unesco_site
  end

  private

  def set_unesco_site
    @unesco_site = Unesco_site.find(params[:id])
  end

  def unesco_sites_params
    params.require(:unesco_site).permit(:name, :wiki_url, :short_description, :latitude, :longitude, :date_added)
  end
end
