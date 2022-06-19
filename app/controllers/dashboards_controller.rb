class DashboardsController < ApplicationController
  def index
    @dashboard_info = fetch_dashboard_info
  end

  private

  def fetch_dashboard_info
    
  end
end
