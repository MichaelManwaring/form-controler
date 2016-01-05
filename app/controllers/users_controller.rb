class UsersController < ApplicationController
	def index
		@users=User.all
	end
	def signup
		@user = User.new
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@id = params[:id]
		# puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5"
		# puts @id
		@user = User.find(@id)
		# puts @user.id
		@user.update(params[:user])
		redirect_to root_path
	end
	def create
		User.create(params[:user])
		redirect_to root_path
	end
end
