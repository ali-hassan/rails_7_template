class LeadsController < ApplicationController

  def create
    @lead = Lead.new permit_params
    @lead.kind = lead_kind 
    @lead.kind = 0 if params[:form_type] == "footer_form"
    @lead.save
  end

  private
  def permit_params
    params.require(:lead).permit(:first_name, :last_name, :company, :phone, :email, :qualify_business_duration, :qualify_monthly_revenue)
  end

  def lead_kind
    (params[:lead][:qualify_monthly_revenue] && params[:lead][:qualify_business_duration]) ? 1 : 2
  end

end
