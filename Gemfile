source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.0.0.1'
gem 'sqlite3'
gem 'jbuilder', '~> 2.0'
gem 'rack-cors'
gem 'therubyracer'
gem 'carrierwave'
gem 'carrierwave-base64'
gem 'mini_magick'
gem 'pry'
gem 'rb-readline'
gem 'puma', '~> 3.7'
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end
