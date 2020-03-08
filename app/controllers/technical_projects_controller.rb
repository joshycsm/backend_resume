class TechnicalProjectsController < ApplicationController
    def index
        @technical_projects = TechnicalProject.all
        render json: @technical_projects
    end

    def show
        @technical_project = TechnicalProject.find(params[:id])
        render json: @technical_project
    end

    def create
        # byebug
        @technical_project = TechnicalProject.create(
            user_id: params[:user],
            name: params[:name],
            description: params[:description],
            deployed_app: params[:deployed_app],
            git_hub: params[:git_hub],
            video: params[:video],
            detailed_description: params[:detailed_description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @technical_project
    end

    def update
        @technical_project = TechnicalProject.find(params[:id])
        @technical_project.update(
            name: params[:name],
            description: params[:description],
            deployed_app: params[:deployed_app],
            git_hub: params[:git_hub],
            video: params[:video],
            detailed_description: params[:detailed_description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @technical_project

    end

    def destroy
        @technical_project = TechnicalProject.find(params[:id])
        @technical_project.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @technical_project
    end
end
