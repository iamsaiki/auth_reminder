Rails.application.routes.draw do

  resources :reminders
   root 'reminders#index'

 devise_for :users

 	devise_scope :user do
 		get "/auth/google_oauth2/callback" => "authentications#google_oauth2"
 		get "/auth/github/callback" => "authentications#github"
	 end

end