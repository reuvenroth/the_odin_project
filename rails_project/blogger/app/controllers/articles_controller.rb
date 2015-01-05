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
	# go to the "add a new article" page /article/new
	def new
		@article = Article.new
	end
	# add a new article from input into the database
	def create
		@article = Article.new(article_params)
		@article.save

		redirect_to article_path(@article)
	end
	# "destroy" a.k.a. delete the current article page & go home
	def destroy
		show.destroy

		redirect_to articles_path
	end
end
