class HeadersController < ApplicationController
    def index
    @headers = Header.all
    render json: @headers, include: [:user]
    end

    def show
        @header = Header.find(params[:id])
        render json: @header, include: [:user]
    end

    def create
        # byebug
        @header = Header.create(
            user_id: params[:user],
            title: params[:title],
            personal_website: params[:personal_website],
            git_hub: params[:git_hub],
            linked_in: params[:linked_in],
            email: params[:email],
            phone_number: params[:phone_number],
            mission_statement: params[:mission_statement],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @header
    end

    def update
        @header = Header.find(params[:id])
        @header.update(
            title: params[:title],
            personal_website: params[:personal_website],
            git_hub: params[:git_hub],
            linked_in: params[:linked_in],
            email: params[:email],
            phone_number: params[:phone_number],
            mission_statement: params[:mission_statement],
        )
        # redirect_to 'http://localhost:3001/'
        render json: @header

    end

    def destroy
        @header = Header.find(params[:id])
        @header.destroy

        # redirect_to 'http://localhost:3001/'
        render json: @header
    end
end
