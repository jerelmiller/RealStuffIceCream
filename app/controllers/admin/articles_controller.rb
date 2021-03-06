class Admin::ArticlesController < Admin::AdminController
  NEWS_PER_PAGE = 10
  
  def index
    @articles = Article.find(:all, :order => 'created_at DESC')
    @articles_count = Article.count
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      flash[:success] = "You have successfully created #{@article.title}"
      redirect_to articles_path
    else
      flash[:error] = "There was a problem creating the news article"
      render :action => "new"
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
      flash[:success] = "You have successfully updated #{@article.title}"
      redirect_to articles_path
    else
      flash[:error] = "There was a problem updating the news article"
      render :action => "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:success] = "You have successfully deleted #{@article.title}"
      redirect_to articles_path
    else
      flash[:error] = "There was a problem deleting #{@article.title}"
    end
  end
end
