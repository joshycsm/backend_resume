class WorkExperiencesController < ApplicationController
    def index
        @work_experiences = WorkExperience.all
        render json: @work_experiences
    end
end
