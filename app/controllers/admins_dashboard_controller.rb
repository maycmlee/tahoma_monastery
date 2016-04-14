class AdminsDashboardController < ApplicationController
  before_filter :authenticate_admin!
end
