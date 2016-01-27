class RetreatApplicationsController < ApplicationController
 before_filter :authenticate_user!

  def new
    @retreat_application = RetreatApplication.new
    # @personal_info = PersonalInfo.new
    # @financial_info = FinancialInfo.new
    # @housing_info = HousingInfo.new
  end

  def create
    binding.pry
  end

end
