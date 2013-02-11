source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'sqlite3'

# twitterログイン認証
gem 'omniauth-twitter'
gem 'twitter'

# Font Awesome
gem 'font-awesome-rails'

# Haml
gem 'haml-rails'

# jQuery
gem 'jquery-rails'

gem "font-awesome-sass-rails"

# bootstrap
# gem 'less-rails'
# gem 'less-rails-bootstrap'

# タグ管理
gem 'acts-as-taggable-on'

# For Markdown
gem 'markdown-scaffold', :group => :development
gem 'redcarpet'
gem "pygments.rb"          # => 0.2.3
gem "rubypython", "0.5.1"  # For Heroku

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-ui-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  # server
  gem 'thin'

  # エラー画面をわかりやすく整形してくれる
  gem 'better_errors'

  # better_errorsの画面上にirb/pry(PERL)を表示する
  gem 'binding_of_caller'

  # erbからhamlに変換
  gem 'erb2haml'
end

group :development, :test do
  # gem 'pry-rails'

  # pry画面でデバックコマンドを実行
  gem 'pry-debugger'

  # pry画面でのドキュメント/ソース表示
  # gem 'pry-doc'
end
