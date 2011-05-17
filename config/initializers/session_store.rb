# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_realStuffIceCream_session',
  :secret      => '6cf0e831c9a8e220d69692bc1f13ab247a7097a27f6da25f65e39de06ba153818f55311c5e5950fd9d16242657a675465cb6ab681915f55d3aa679fdb0be1bb7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
