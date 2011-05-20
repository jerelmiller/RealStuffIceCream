class Admin::ArticlesController < Admin::AdminController
  NEWS_PER_PAGE = 10
  
  def index
    @articles = Article.find(:all, :order => 'created_at DESC')
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
    @article = Article.new(params[:news])

    if @article.save
      redirect_to(admin_news_path, :notice => 'News was successfully created.') 
    else
      render :action => 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:news])
        format.html { redirect_to(@article, :notice => 'News was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to admin_articles_path
  end
end
