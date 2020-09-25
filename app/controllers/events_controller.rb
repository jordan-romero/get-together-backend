class EventsController < ApplicationController

    def index 
        events = Event.all 
        render json: EventSerializer.new(events).to_serialized_json 
    end 

    def create 
        event = Event.new(event_params)
        event.save 
        render json: EventSerializer.new(event).to_serialized_json
    end 

    def update 
        event = Event.find_by(id: params[:id])
        event.update(event_params)
        render json: EventSerializer.new(event).to_serialized_json
    end 

    def destroy
        event = Event.find_by(id: params[:id])
        event.destroy

        render json: {message: "Event successfully Deleted"}
    end 


    private 

    def event_params
        params.permit(:name, :description, :location, :duration, :cost, :category_name, :occasion_name)
    end 
end


