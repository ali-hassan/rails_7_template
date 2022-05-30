module ApplicationHelper

  def min_monthly_revenue_qualification_limit
    Setting.fetch_by_title('min_monthly_average_revenue').value.to_i / 1000
  end

  def min_business_duration_qualification_limit
    Setting.fetch_by_title('min_business_period_in_months').value.to_i
  end

  def range_boxes
    
  end

end