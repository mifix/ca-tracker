module StatisticsHelper
  
  def progress(current, previous, attr)
    prev_value = previous.send(attr) 
    return 0 if prev_value.nil? 
    
    current.send(attr) - prev_value
  end
  
  def format_progress(current, previous, attr, inv_format=false)
    val = progress(current, previous, attr)
    format_value(val, inv_format)
  end
  
  def format_value(value, inv_format=false)
    sign = "pos"
    if (value < 0 && !inv_format) || (value > 0 && inv_format)
      sign = "neg"
    end
    "<span class='#{sign}'>#{format_number(value)}</span>"
  end

  def format_number(value)
    if value.class == Float
      number_with_precision(value, :precision => 2) 
    else
      value
    end
  end
  
end
