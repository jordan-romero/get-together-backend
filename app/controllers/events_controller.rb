class EventsController < ApplicationController

    def index 
        events = Event.all 
        render json: EventSerializer.new(events).to_serialized_json 
    end 

    def create 
        event = Event.new(event_params)
        event.save 
        render json: EventSerializer.new(events).to_serialized_json
    end 




    private 

    def event_params
        params.permit(:name, :description, :location, :duration, :cost)
    end 
end

