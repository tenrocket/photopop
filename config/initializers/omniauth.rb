OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '695652163835167', 'eea5c8b8373df836090b03472d1593bf', :scope => "email, publish_actions, user_events, user_photos, user_location, offline_access", :display => 'popup'
end