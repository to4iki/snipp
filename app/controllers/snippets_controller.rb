class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
    @tags = Snippet.tag_counts_on(:tags)
  end

  def tag
    @snippets = Snippet.tagged_with(params[:name])
    @tags = Snippet.tag_counts_on(:tags)

    render 'index'
  end
end
