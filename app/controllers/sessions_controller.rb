class SessionsController < ApplicationController
  # session情報作成
  def create
    auth = request.env["omniauth.auth"]
    session[:oauth_token] = auth.credentials.token
    session[:oauth_token_secret] = auth.credentials.secret
    session[:username] = auth.extra.access_token.params[:screen_name]
    # usersテーブルの参照
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  # twitter認証の破棄
  def destroy
    session[:oauth_token] = nil
    session[:oauth_token_secret] = nil
    session[:username] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end