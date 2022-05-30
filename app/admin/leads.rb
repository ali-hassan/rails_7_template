ActiveAdmin.register Lead do
  Lead::KINDS.each do |kind|
    scope(kind.humanize) { |scope| scope.where(kind: kind) }
  end   
end
