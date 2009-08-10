module StatisticsHelper
  
  def progress(current, previous, attr)
    prev_value = previous.send(attr) 
    return 0 if prev_value.nil? 
    
    current.send(attr) - prev_value
  end
  
  def format_progress(current, previous, attr)
    val = progress(current, previous, attr)
    format_value(val)
  end
  
  def format_value(value)
    if value > 0
      "<div class='pos'>#{format_number(value)}</div>"
    elsif value < 0
      "<div class='neg'>#{format_number(value)}</div>"
    end
  end

  def format_number(value)
    if value.class == Float
      number_with_precision(value, 2) 
    else
      value
    end
  end
  
end
