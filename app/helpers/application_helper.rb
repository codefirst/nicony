module ApplicationHelper
  def format_title(s)
    if s and not s.empty? then
      "#{s} - Nicony"
    else
      'Nicony'
    end
  end
end
