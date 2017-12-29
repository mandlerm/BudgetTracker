Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']

#resources said to add this line, but this changed error from csf token to invalid credientials
  #,provider_ignores_state: true
end
