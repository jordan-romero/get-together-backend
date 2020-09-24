class OccasionsController < ApplicationController

    def index 
        occasions = Occasion.all 
        render json: OccasionSerializer.new(occasions).to_serialized_json
    end 
end
