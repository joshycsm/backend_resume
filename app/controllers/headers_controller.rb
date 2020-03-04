class HeadersController < ApplicationController
    def index
    @headers = Header.all
    render json: @headers
    end
end
