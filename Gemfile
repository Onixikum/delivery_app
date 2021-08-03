source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '6.1.4'
gem 'pg', '1.2.3'
gem 'puma', '5.4.0'
gem 'sass-rails', '6.0.0'
gem 'webpacker', '5.4.0'
gem 'turbolinks', '5.2.1'
gem 'jbuilder', '2.11.2'
gem 'bootsnap', '1.7.7', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '4.1.0'
  gem 'rack-mini-profiler', '2.3.2'
  gem 'listen', '3.6.0'
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
