class ArticlesController < ApplicationController
	include ArticlesHelper
	# set homepage to list all articles
	def index
		@articles = Article.all
	end
	# retrieve & display all articles
	def show
		@article = Article.find(params[:id])
	end
	# add a new article from input
	def new
		@article = Article.new
	end
	# add a new article into the database
	def create
		@article = Article.new(article_params)
		@article.save

		redirect_to article_path(@article)
	end
end
