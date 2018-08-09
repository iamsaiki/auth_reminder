Rails.application.routes.draw do

 devise_for :users

 	devise_scope :user do
 		get "/auth/google_oauth2/callback" => "authentications#google_oauth2"
 		get "/auth/github/callback" => "authentications#github"
	 end

 	root 'reminder#index'
 	get 'reminder/index'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end