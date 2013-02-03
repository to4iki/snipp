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

  def create

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
