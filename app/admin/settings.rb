ActiveAdmin.register Setting do
  actions :all, except: [:destroy]
  permit_params :title, :value

  form do |f|
    f.inputs do
      f.input :title, input_html: { disabled: !setting.new_record? } 
      f.input :value
    end
    f.actions
  end

end
