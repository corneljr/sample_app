# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file,token)
		token_file
	end
end

SampleApp::Application.config.secret_key_base = '283f6db401c12f0168cbca4e7118d9cc6b1fe1fc0aebb131360989daaaf6516d863497e2fdc3751385ec7de3485f8694ab1283cc6367788af8e5c3a2551e2e3a'
