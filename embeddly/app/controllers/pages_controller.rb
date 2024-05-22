class PagesController < ApplicationController
  protect_from_forgery except: [:script, :sign_in]

  def show
    cookies[:petes_cross_site] = {
			value: 'a yummy cookie',
			expires: 1.year.from_now,
			secure: true,
			same_site: "None"
    }
  end

  def script
  end

	def sign_in
		cookies[:user_name] = {
			value: params[:user_name],
			expires: 1.year.from_now,
			secure: true,
			# same_site: "None"
		}

		redirect_to root_url(protocol: "https") 
	end
end