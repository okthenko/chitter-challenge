require 'sinatra/base'
require_relative 'lib/message'

class Chitter < Sinatra::Base


    get '/' do
        erb :index
    end

    get '/messages' do
        @messages = Message.list
        erb :messages
    end

    post '/messages' do
        Message.add(params['message_text'])
        redirect '/messages'
    end

  run! if app_file == $0
end
