require 'sinatra/base'

class Battle < Sinatra::Base
  get '/battle' do
    "Hello Battle"
  end
end
