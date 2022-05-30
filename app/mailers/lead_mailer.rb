class LeadMailer < ApplicationMailer

  def new_lead lead
    args = {
        leadName: lead.first_name,
    }
    mail(to: lead.email, body: 'not used', template_id: 'd-3acb1179a82145188927d80362711932', dynamic_template_data: args)
  end

end