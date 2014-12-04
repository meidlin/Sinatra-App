require File.dirname(__FILE__) + '/../routes'
require 'rack/test'

set :environment, :test

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'get "/Rush/Alfonso"' do
    before { get '/Rush/Alfonso' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Alfonso Rush's username is arush" }
  end

  context 'get "/Rush/Alfonso/D"' do
    before { get '/Rush/Alfonso/D' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Alfonso D Rush's username is adrush" }    
  end

  context 'get "/Matsumoto/Yukihiro"' do
    before { get '/Matsumoto/Yukihiro' }
    specify { expect(last_response).to be_ok }
    specify { expect(last_response.body).to include "Yukihiro Matsumoto's username is ymatsu" }
  end

end