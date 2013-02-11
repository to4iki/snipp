class SnippetsController < ApplicationController

  before_filter :require_login, :only => [:index, :show, :new, :edit]

  # /snippets
  def index
    # 日付の降順 + pinの有無 でソート
    @snippets = Snippet.order("'pin' = CASE WHEN pin = 't' THEN 0 ELSE 'pin' END").order("created_at DESC").all
    @tags = Snippet.tag_counts_on(:tags).order('count DESC')
  end

  def tag
    @snippets = Snippet.tagged_with(params[:name])
    # カウントの多い順にソート
    @tags = Snippet.tag_counts_on(:tags).order('count DESC')

    render 'index'
  end

  # /snippets/(id)
  def show
    @snippet = Snippet.find(params[:id])
  end

  # /snippet/new
  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(params[:snippet])
    if @snippet.save
      # snippet_path(/snippets)
      redirect_to snippets_path, notice: 'Created!'
    else
      # newのviewの書き直し
      render action: 'new'
    end
  end

  # snippets(id)/edit
  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update_attributes(params[:snippet])
      redirect_to snippets_path, notice: 'Update!'
    else
      # editのviewの書き直し
      render action: 'edit'
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    render json: { snippet: @snippet }
  end

end
