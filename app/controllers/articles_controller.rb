class ArticlesController < ApplicationController
  NEWS_PER_PAGE = 2
  
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => NEWS_PER_PAGE, :order => 'created_at DESC')
  end
  
end
