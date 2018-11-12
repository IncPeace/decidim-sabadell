source 'https://rubygems.org'

ruby '2.5.3'

DECIDIM_VERSION = '~> 0.14.4'.freeze

gem 'decidim', DECIDIM_VERSION
gem 'virtus-multiparams'

gem 'puma'
gem 'uglifier'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'decidim-dev', DECIDIM_VERSION
end

group :development do
  gem 'faker'
  gem 'letter_opener_web', '~> 1.3.0'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :production do
  gem 'dalli'
  gem 'sentry-raven'
  gem 'sidekiq'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
