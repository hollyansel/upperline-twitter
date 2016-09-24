require  './config/environment'
require_relative '../models/user'
require_relative '../models/tweet'

class ApplicationController < Sinatra::Base
    
    configure do
        set :views, 'app/views'
        set :public_folder, 'public'
    end    
    
    get '/' do
        @user1 = User.new("Holly Ansel", 16, "Walnut Creek, CA")
        @tweet1 = Tweet.new("Hello I'm Upperline1", "Upperline1")
        @tweet2 = Tweet.new("Hello I'm Upperline2", "Upperline2")
        @tweet3 = Tweet.new("Hello I'm Upperline3", "Upperline3")
        @tweet4 = Tweet.new("Hello I'm Upperline4", "Upperline4")
        @tweet5 = Tweet.new("Hello I'm Upperline5", "Upperline5")
        @tweets = Tweet.all
        erb :index
    end
    
    
end    