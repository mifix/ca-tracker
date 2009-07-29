# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ca-tracker_session',
  :secret      => '26c71bde96c4281ef1239065ba9f9c917661a15ccbc71cba99cd6da2f7aa01ac68d33fe23597415fbb72077d9d33217e92a56f4f48eac9c01cdc4cfd1db9931e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
