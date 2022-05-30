class PersonalInfoController < ApplicationController

  def new
    lead = Lead.find(params[:lead_id])
    @user = User.new first_name: lead.first_name, last_name: lead.last_name, phone: lead.phone, email: lead.email 
  end

  def create
    @user = User.create permit_params
    sign_in @user
    @business_info = @user.business_info
  end

  def update
    @user = User.update permit_params
  end

  private
  def permit_params
    params.require(:user).permit(:first_name, :last_name, :phone, :email, :address, :password, :is_us_citizen, :password)
  end


end
