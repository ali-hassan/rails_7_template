module UploadDocumentsHelper
  def last_month
    Time.now.months_since(-1).strftime("%B %Y")
  end

  def second_last_month
    Time.now.months_since(-2).strftime("%B %Y")
  end

  def third_last_month
    Time.now.months_since(-3).strftime("%B %Y")
  end
end
