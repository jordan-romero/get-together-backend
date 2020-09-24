class Event < ApplicationRecord
  belongs_to :occasion
  belongs_to :occasion

  def occasion_name=(name)
    occasion = occasion.find_by(name: name)
    self.occasion = occasion 
  end 

  def occasion_name
    occasion.name 
  end 

  def occasion_name=(name)
    occasion = Occasion.find_by(name: name)
    self.occasion = occasion 
  end 

  def occasion_name
    occasion.name 
  end 
end
