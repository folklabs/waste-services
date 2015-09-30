module ApplicationHelper
  def formatted_date(date)
    Time.xmlschema(date).strftime("%d %B %Y")
  end
end
