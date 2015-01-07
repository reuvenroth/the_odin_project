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
		#Displays create notice for each article
		flash.notice = "Article '#{@article.title}' has been created!"

		redirect_to article_path(@article)
	end
	# "destroy" a.k.a. delete the current article page & go home
	def destroy
		show.destroy
		#Displays delete notice for each article
		flash.notice = "Article '#{@article.title}' has been deleted!"

	#note: don't go to article_path() since the article is already removed.
	#Don't add params of (index) or (@article) or there'll be added url code.
		redirect_to articles_path
	end
	# edit...now!
	def edit
		show
	end
	# update...now!
	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		#Displays update notice for each article
		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article)
	end
end