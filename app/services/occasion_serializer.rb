class OccasionSerializer 
    def initialize(occasion_object)
        @occasion = occasion_object
    end 

    def to_serialized_json
        @occasion.to_json(:except => [:created_at, :updated_at],
        :include => {
            :events => {:only => [:name, :cost]}
        })
    end 
end 