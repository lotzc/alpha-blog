class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_perams)
    @article.save
    redirect_to articles_show(@article)
  end

  private
    def article_perams
      params.require(:article).permit(:title, :description)
    end

end
