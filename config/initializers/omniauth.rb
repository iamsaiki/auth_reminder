Rails.application.config.middleware.use OmniAuth::Builder do
	
	provider :google_oauth2, '959962163267-4nkv3ui93flmoc3tefhsjf1pi9k4hahq.apps.googleusercontent.com','afa8OvzclG3icZ-JE5I1PlfI', scope: 'email,profile'
	provider :github, 'cf61054b6d8499be1370','2d0d3d066c7d30031a75162d177d102e8c0e6dc4', scope: "user,repo,gist"

end