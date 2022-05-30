class FundingInfoController < ApplicationController

  def edit
    @funding_info = current_user.funding_info 
  end

  def update
    @funding_info = current_user.funding_info
    @funding_info.update funding_info_params  
  end

  private
  def funding_info_params    
    params.require(:funding_info).permit(:request_amount_id, :purpose_id, :is_cash_adv, :accept_card, :estimated_monthly_cc_sales_id, :step, credit_infos_attributes: [:id, :lender_name, :balance_amount_id, :_destroy] )
  end

end
