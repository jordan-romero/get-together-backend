class Event < ApplicationRecord
  belongs_to :category
  belongs_to :occasion

  def category_name=(name)
    category = Category.find_by(name: name)
    self.category = category 
  end 

  def category_name
    category.name 
  end 

  def occasion_name=(name)
    occasion = Occasion.find_by(name: name)
    self.occasion = occasion 
  end 

  def occasion_name
    occasion.name 
  end 
end
