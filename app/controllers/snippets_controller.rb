class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
    @tags = Snippet.tag_counts_on(:tags).order('count DESC')
  end

  def tag
    @snippets = Snippet.tagged_with(params[:name])
    # order('count DESC')でカウントの多い順sort
    @tags = Snippet.tag_counts_on(:tags).order('count DESC')

    render 'index'
  end

  def show

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
