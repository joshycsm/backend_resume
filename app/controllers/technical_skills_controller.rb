class TechnicalSkillsController < ApplicationController
    def index
        @technical_skills = TechnicalSkill.all
        render json: @technical_skills
    end
end
