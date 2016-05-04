class RetreatApplicationsController < ApplicationController
 before_filter :authenticate_user!

  def new
    @retreat_application = RetreatApplication.new
    @personal_info = @retreat_application.build_personal_info
    @financial_info = @retreat_application.build_financial_info
    @housing_info = @retreat_application.build_housing_info
    @emergency_info = @retreat_application.build_emergency_info
  end

  def create
    @retreat_app = RetreatApplication.create(retreat_app_params)
    # @personal = @retreat_app.build_personal_info(retreat_app_params[:personal_info_attributes])
    # @personal.save
    # @financial = @retreat_app.build_financial_info(retreat_app_params[:financial_info_attributes])
    # @financial.save
    # @housing = @retreat_app.build_housing_info(retreat_app_params[:housing_info_attributes])
    # @housing.save
    # @emergency = @retreat_app.build_emergency_info(retreat_app_params[:emergency_info_attributes])
    # @emergency.save

    @retreat_app.user_id = current_user.id
    @retreat_app.status = "pending"
    
    if @retreat_app.save
      RetreatAppMailer.app_submitted(@retreat_app).deliver_now
    else
      #throw error
    end 
  end

  def edit
    binding.pry
  end

  def update

  end

  private
    def retreat_app_params
      params.require(:retreat_application).permit(personal_info_attributes: [:firstname, :lastname, :address, :phone],
        financial_info_attributes: [:need_aid, :amt_aid_needed],
        housing_info_attributes: [:need_housing, :camping], emergency_info_attributes: [:emergency_contact_name, :emergency_contact_phone, :emergency_contact_relationship])
    end

end
