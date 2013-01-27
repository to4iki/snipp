class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :signed_in?,:current_user

  private

  # ユーザがログイン状態かどうか判別するためのヘルパーメソッド
  def signed_in?
    true if session[:oauth_token]
  end

  # ログインユーザの情報取得
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
