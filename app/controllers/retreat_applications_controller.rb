class RetreatApplicationsController < ApplicationController
 before_filter :authenticate_user!

  def new
    @retreat_application = RetreatApplication.new
    @personal_info = @retreat_application.build_personal_info
    @financial_info = @retreat_application.build_financial_info
    @housing_info = @retreat_application.build_housing_info
  end

  def create
    binding.pry
  end

  private
    def retreat_application_params
      params.require(:retreat_application).permit({personal_info: [:firstname, :lastname, :address, :phone]})
    end

end
