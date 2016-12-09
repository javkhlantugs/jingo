class UsersApiController < ApplicationController
    protect_from_forgery except: [:index, :zipcodes]

	def index 

		current_user_hometown = current_user.hometown
		@common_hometown = User.where(:hometown => current_user_hometown)
		



		render json: @common_hometown, callback: "handleUserData"
	end

	def zipcodes

		zipcodes = []

		current_user_hometown = current_user.hometown
		@common_hometown = User.where(:hometown => current_user_hometown)
		@common_hometown.each do |x| 
			zipcodes.push(x.zipcode)
		
		end
		zipcodes = zipcodes.uniq!
		zipcodes = zipcodes.select do |x|
			x != nil
		end

		render json: zipcodes, callback: 'zipContainingUsers'
	end


end
