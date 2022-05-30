ActiveAdmin.register RevenueRange do
  
  permit_params :title, :kind, :sort_order, :active

  RevenueRange::KINDS.each do |kind|
    scope(kind.humanize) { |scope| scope.where(kind: kind) }
  end
end
