class EventsController < ApplicationController

    def index 
        events = Event.all 
        render json: EventSerializer.new(events).to_serialized_json 
    end 

    def create 
        event = Event.new(event_params)
        byebug
        event.save 
        render json: EventSerializer.new(event).to_serialized_json
    end 




    private 

    def event_params
        params.permit(:name, :description, :location, :duration, :cost, :category)
    end 
end

