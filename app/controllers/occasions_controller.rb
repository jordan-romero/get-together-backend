class OccasionsController < ApplicationController

    def index 
        occasions = Occasion.all 
        render json: OccasionSerializer.new(occasions).to_serialized_json
    end 

    def create 
        # byebug
        occasion = Occasion.new(occasion_params)
        if occasion.save 
            render json: OccasionSerializer.new(occasion).to_serialized_json
        else 
            render json: {errors: occasion.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end 
    end 

    def update 
        occasion = Occasion.find_by(id: params[:id])
        if occasion.update(occasion_params)
            render json: OccasionSerializer.new(occasion).to_serialized_json
        else 
            render json: {errors: occasion.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end 
    end 

    def destroy
        occasion = Occasion.find_by(id: params[:id])
        occasion.destroy

        render json: {message: "Event successfully Deleted"}
    end 
end


private 

def occasion_params 
    params.permit(:name, :date, :time, :event_name)
end 