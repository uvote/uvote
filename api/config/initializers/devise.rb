Devise.setup do |config|
  config.secret_key = '879f85e7c8f05ff82bfdc5bfe4863cf42f4744e7b6f04f0a707f0e85edef5c0bfe37f55f27144ff6894ba4d33eec1383902fd3142ca5fb2749ae7a2b34da2cc7'
  config.authentication_keys = [:email, :nickname]
end