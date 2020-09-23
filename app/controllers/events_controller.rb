class EventsController < ApplicationController

    def index 
        events = Event.all 
        render json: EventSerializer.new(events).to_serialized_json 
    end 
end

