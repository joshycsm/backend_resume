class TechnicalSkillsController < ApplicationController
    def index
        @technical_skills = TechnicalSkill.all
        render json: @technical_skills, include: [:user]
    end

    def show
        @technical_skill = TechnicalSkill.find(params[:id])
        render json: @technical_skill, include: [:user]
    end

    def create
        # byebug
        @technical_skill = TechnicalSkill.create(
            user_id: params[:user],
            description: params[:description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @technical_skill
    end

    def update
        @technical_skill = TechnicalSkill.find(params[:id])
        @technical_skill.update(
            description: params[:description],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @technical_skill

    end

    def destroy
        @technical_skill = TechnicalSkill.find(params[:id])
        @technical_skill.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @technical_skill
    end
end
