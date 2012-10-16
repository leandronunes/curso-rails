# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bli_session',
  :secret      => '8a118a6c203a9beb5502d8c300b7a2439a15f88cc790efac15ebb23131a501a09faa0a805813bc08035c19e93e8531272f5fc5de45514ec57bd1e93426319b56'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
