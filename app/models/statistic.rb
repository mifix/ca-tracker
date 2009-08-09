class Statistic < ActiveRecord::Base
  belongs_to :player
  
  def insert_data_from_website(result)
    self.attributes.each do |attr, v|
      next if !result.respond_to?(attr) || result.send(attr).nil?
      value = result.send(attr).gsub(',', '')
      self.send("#{attr}=", value)
    end
    save
  end
end
