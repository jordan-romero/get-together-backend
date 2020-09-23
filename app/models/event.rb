class Event < ApplicationRecord
  belongs_to :category
  belongs_to :occasion
end
