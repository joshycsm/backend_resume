require 'jwt'

# before_action :authenticate, only: [:index, :destroy]
# before_action: :require_login, only: [:index, :destroy]

class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: [:headers, :technical_projects, :work_experiences, :educations, :technical_skills]
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(
            name: params[:name],
            username: params[:username],
            password: params[:password]
            )

        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        # redirect_to 'http://localhost:3001/'
        render json: @user

    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @user
    end

    def profile
        authorization_header = request.headers[:authorization]
        if !authorization_header
            render status: :unauthorized
        else
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secrets.secret_key_base
            # byebug
            decoded_token = JWT.decode(token, secret)
            # byebug
            user = User.find(decoded_token[0]["user_id"])
            render json: user, include: [:headers, :technical_projects, :work_experiences, :educations, :technical_skills]
        end
    end
end
