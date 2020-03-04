require 'jwt'
class AuthenticationController < ApplicationController
    def login
        # byebug
        username = params[:user][:username]
        password = params[:user][:password]

        @user = User.find_by(username: username)

        # render json: @user
        
        if !@user
            render status: :unauthorized
        else
            if !@user.authenticate password
                render status: :unauthorized
            else
                # secret =ENV['SECRET_KEY_BASE']
                secret = Rails.application.secrets.secret_key_base
                # render json: {message: secret}
                token = JWT.encode({
                    user_id: @user.id,
                    user_name: @user.username
                }, secret)
                render json: { 
                    token: token
                    # username: @user.username
                
                }
            end
        end
    end
end
