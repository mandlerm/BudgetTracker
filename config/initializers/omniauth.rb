Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end
#resources said to add this line, but this changed error from csf token to invalid credientials
  #,provider_ignores_state: true

  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '160434218061528', 'ef27bae5d8f7e258b71606d599c0053c'
    #provider :facebook, ENV['FB_KEY'], ENV['FB_SECRET']

end
