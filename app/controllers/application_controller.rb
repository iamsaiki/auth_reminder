class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_action :authenticate_user!

	def new_sessions_path(scope)
		new_user_session_path
	end
end
