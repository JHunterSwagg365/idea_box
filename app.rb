require './idea'

class IdeaBoxApp < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end
	
  get '/' do
    erb :index
  end


  not_found do
    erb :error
  end

  post '/' do
  	idea = Idea.new
  	idea.save
  "Creating an IDEA!"
  end
end
