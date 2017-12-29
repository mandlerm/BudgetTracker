Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
