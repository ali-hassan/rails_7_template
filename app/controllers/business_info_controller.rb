class BusinessInfoController < ApplicationController

  def edit
    @business_info = current_user.business_info 
  end

  def update
    @business_info = current_user.business_info
    params[:business_info][:dba] = "" if params[:business_info][:is_different_dba] == "0" 
    unless @business_info.update business_info_params  
      @business_info.is_different_dba = true if @business_info.errors.has_key?(:dba)
    end

  end

  private
  def business_info_params
    params.require(:business_info).permit(:legal_name, :is_different_dba, :dba, :phone, :email, :address, :ein, :type_of_entity, :ownership_id, :monthly_revenue_id, :estimated_credit_score_id, :is_home_based, :is_rented, :open_fo_bankruptcy, :bankruptcy_reason, :step)
  end

end
