class EventSerializer 
    def initialize(event_object)
        @event = event_object
    end 

    def to_serialized_json
        @event.to_json(:except => [:created_at, :updated_at],
        :include => {
            :category => {:only => [:name]}, 
            :occasion => {:only => [:name, :date_format, :time_format], :methods => [:date_format, :time_format]} 
        })
    end 
end 