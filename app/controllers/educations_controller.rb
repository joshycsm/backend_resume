class EducationsController < ApplicationController
    def index
        @educations = Education.all
        render json: @educations, include: [:user]
    end

    def show
        @education = Education.find(params[:id])
        render json: @education, include: [:user]
    end

    def create
        # byebug
        @education = Education.create(
            user_id: params[:user],
            name: params[:name],
            date: params[:date],
            description: params[:description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @education
    end

    def update
        @education = Education.find(params[:id])
        @education.update(
            name: params[:name],
            date: params[:date],
            description: params[:description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @education

    end

    def destroy
        @education = Education.find(params[:id])
        @education.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @education
    end
end
