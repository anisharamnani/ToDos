require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application
    get '/birthday' do 
      t = Time.now 
      if t.month == 1 && t.day == 18 
        erb :yes
      else 
        erb :no 
      end 
    end 
  end
end

