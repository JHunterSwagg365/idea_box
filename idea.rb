require 'yaml/store'
class Idea
	def initialize(title, description)
	end
	def save
		database.transaction do |db|
			db['ideas'] ||= []
    		db['ideas'] << {title: 'amazing idea', description: 'eat pizza for lunch'}
		end
	end

	def database
		@database ||= YAML::Store.new "ideabox"
	end
end