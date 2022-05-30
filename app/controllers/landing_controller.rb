class LandingController < ApplicationController
  before_action :init_lead_obj

  def index
  end

  def faqs
    @faq = Faq.all
  end

  def about
  end

  def products
  end
  
  def contact_us
  end
    
  def blog_detail
  end

  def blog_feed
  end

  private

  def init_lead_obj
    @lead = Lead.new
  end

end
