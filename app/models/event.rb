class Event < ApplicationRecord
  belongs_to :category
  belongs_to :occasion

  validates :name, :description, :duration, :cost, :location, presence: true 

  scope :sort_by_cost, -> { order(cost: :desc)}

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

  def self.sort(filtered_events, sort_params)
    case sort_params
      when 'alphabetical' then filtered_events.order(:name)
      when 'cost' then filtered_events.sort_by_cost
    end 
  end 

end
