class WorkExperiencesController < ApplicationController
    def index
        @work_experiences = WorkExperience.all
        render json: @work_experiences, include: [:user]
    end

    def show
        @work_experience = WorkExperience.find(params[:id])
        render json: @work_experience, include: [:user]
    end

    def create
        # byebug
        @work_experience = WorkExperience.create(
            user_id: params[:user],
            job_title: params[:job_title],
            date: params[:date],
            location: params[:location],
            description: params[:description],
            detailed_description: params[:detailed_description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @work_experience
    end

    def update
        @work_experience = WorkExperience.find(params[:id])
        @work_experience.update(
            job_title: params[:job_title],
            date: params[:date],
            location: params[:location],
            description: params[:description],
            detailed_description: params[:detailed_description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @work_experience

    end

    def destroy
        @work_experience = WorkExperience.find(params[:id])
        @work_experience.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @work_experience
    end
end
