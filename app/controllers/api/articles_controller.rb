class Api::ArticlesController < ApplicationController
	def index
		response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=YOURAPIKEY")
		render json: response.parse
	end
end
