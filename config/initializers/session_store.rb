# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nsbe_final_session',
  :secret      => 'c0f746975e7bb6f69ed489bc5ae573af3b3e75e131f50c514ad9e07eab901a3d35f6c4c51460889e85ffd408bd77f248f1d89bfec765ed909b1d1c317215c9be'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
