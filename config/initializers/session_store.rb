# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dice_session',
  :secret      => 'cde353c17d8968f5e78a83578564e1b9013065f86318c6edbe27b591dbafc55f7e6762dcef104ef092823f6981009ece22a3a049eb31772d8ca96a14273d47fb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
