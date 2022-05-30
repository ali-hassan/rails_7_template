class StepDecorator < Draper::Decorator
  delegate_all

  def build_revenue_selector revenue_range_kind, obj_id
    ranges = RevenueRange.fetch_by_kind(revenue_range_kind).select(:id, :title)
    inner_html = ''
    h.content_tag :div, class: 'row custom-range-box flex-nowrap mt-3', data: { range_box: 'parent' } do
      ranges.each do |range|
        inner_html += h.content_tag :div, range.title, class: "col-lg-2 col-md-2 col-sm-3 col-3 item #{ "active" if range.id == obj_id }", data: { action: "click->revenue#selectItem", range_box: 'item', range_id: range.id  }
      end
      inner_html.html_safe        
    end
  end
  
end
