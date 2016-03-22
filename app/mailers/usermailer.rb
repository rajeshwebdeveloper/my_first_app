class Usermailer < ApplicationMailer
	default from: 'rajesh.techie1@gmail.com'
	def success_registration user
		@user = user
		@url = 'http://www.gmail.com'
		mail(to: @user.email) do |format|
		  format.html { render "success_registration" }
		end		
		# mail(to: @user.email, subject: "Welcome #{@user.name} to my app, You have registered successfully.")
	end
end
