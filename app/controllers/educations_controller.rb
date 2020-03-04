class EducationsController < ApplicationController
    def index
        @education = Education.all
        render json: @education
    end
end
