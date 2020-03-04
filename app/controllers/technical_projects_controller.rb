class TechnicalProjectsController < ApplicationController
    def index
        @technical_projects = TechnicalProject.all
        render json: @technical_projects
    end
end
