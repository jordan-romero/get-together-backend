class Occasion < ApplicationRecord
    has_many :events

    def date_format
        date.strftime("%b %d, %Y")
    end 

    def time_format
        time.strftime("%l:%M %p")
    end 
end
