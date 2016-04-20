class AdminsDashboardController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @users = User.all
    @retreatapplications = RetreatApplication.all
  end
end
