ActiveAdmin.register Faq do
    permit_params :question, :answer 
    form do |f|
        f.inputs 'Faq' do
        f.input :question
        f.input :answer, as: :quill_editor
        f.actions
    end
        
      end
    
      show do
        attributes_table do
          
          row :question
          row :answer
          end  
        end
      end