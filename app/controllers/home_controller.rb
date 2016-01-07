class HomeController < ApplicationController
  def index
    @site_data = SiteData.order(published: :desc).limit(50)
  end
end
