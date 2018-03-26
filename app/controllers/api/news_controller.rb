class Api::NewsController < ApplicationController
    def index
        render json: {news: News.all}
    end
end