class HomeController < ApplicationController
	def query
	end
	def search
		puts params
		redirect_to root_path
	end
end
