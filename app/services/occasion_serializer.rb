class OccasionSerializer 
    def initialize(occasion_object)
        @occasion = occasion_object
    end 

    def to_serialized_json
        @occasion.to_json(:only => [:name, :date, :time, :id], :methods => [:date_format, :time_format],
        :include => {
            :events => {:only => [:name, :cost]}
        })
    end 
end 