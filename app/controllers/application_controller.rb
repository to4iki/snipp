class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?, :show_markdown, :current_user

  private

  # ユーザがログイン状態かどうか判別するためのヘルパーメソッド
  def signed_in?
    true if session[:oauth_token]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
    session[:user_id] = nil
  end

  def render_not_found
    render "public/404", :layout => false, :status => 404
  end

  # ログイン認証
  def require_login
    redirect_to("/") unless signed_in?
  end

  #---------------#
  # show_markdown #
  #---------------#
  # Markdown変換
  def show_markdown( text )
    html_render = HtmlWithPygments.new( hard_wrap: true, filter_html: true )
    markdown    = Redcarpet::Markdown.new( html_render, autolink: true, fenced_code_blocks: true, space_after_headers: true )

    return markdown.render( text )
  end

end
