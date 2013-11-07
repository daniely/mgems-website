# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
MgemsWebsite::Application.config.secret_token = ENV['SECRET_TOKEN'] || '7c9b234bc2767cdee95a323ca9a697472bb0a635258632c51978992690f343b18253ff7cf03ef1a43cb1f13797bfa4b33033861b06771cbf2c68f897220c5e89'
