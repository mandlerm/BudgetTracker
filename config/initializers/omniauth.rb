Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, CONSUMER_KEY, CONSUMER_SECRET
end

use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
