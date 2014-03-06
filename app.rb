require 'sinatra'
require 'sinatra/assetpack'
require 'json'

class MyApp < Sinatra::Base

  register Sinatra::AssetPack
  assets do
    js :application, [ "/js/jquery-1.11.0.min.js", "/js/index.js" ]
  end

  get '/' do
    @departures = [1,2,3]
    erb :index
  end

  get '/destinations' do
    content_type :json
    find_departure?(params[:text]) or halt 404
  end


  private

  def find_departure?(str)
    departures = { "New York" => [ "London" ] }
    departures.keys.include?(str) and { text: departures[ params[:text] ] }.to_json
  end

end
