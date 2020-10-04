class EventsController < ApplicationController

    def index 
        if params['filter'].present? 
            params['filter'] == 'all' ? filtered_events = Event.all : filtered_items = Event.where(category: params['filter'])
            sorted_events = Event.sort(filtered_events, params['sort'])
            if params['query'].present? 
                events = sorted_events.where("name Like ?", "%#{params[:query]}%")
            else 
                events = sorted_events
            end 
        else 
            events = Event.all 
        end 
        render json: EventSerializer.new(events).to_serialized_json 
    end 

    def create
        event = Event.new(event_params)
        if event.save 
            render json: EventSerializer.new(event).to_serialized_json
        else 
            render json: {errors: event.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end 
    end 

    def update 
        event = Event.find_by(id: params[:id])
        if event.update(event_params)
            render json: EventSerializer.new(event).to_serialized_json
        else 
            render json: {errors: event.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end 
    end 

    def destroy
        event = Event.find_by(id: params[:id])
        event.destroy

        render json: {message: "Event successfully Deleted"}
    end 


    private 

    def event_params
        params.permit(:name, :description, :location, :duration, :cost, :category_name, :occasion_name, :occasion_id)
    end 
end


