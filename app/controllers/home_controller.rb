class HomeController < ApplicationController
  def index
    @site_data = SiteData.order(published: :desc).limit(100)
  end
end
