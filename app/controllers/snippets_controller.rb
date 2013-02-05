class SnippetsController < ApplicationController

  # /snippets
  def index
    # 日付の降順でソート
    @snippets = Snippet.all(:order => "created_at DESC")
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

  def edit

  end

  def update

  end

  def destroy

  end

  def search
    search_word = URI.decode(params[:q].to_s)
    @snippets = Snippet.where(content: search_word)
  end

end
