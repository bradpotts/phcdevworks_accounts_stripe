Rails.application.routes.draw do

	# Website Pages
	namespace :website do
		get 'pages/index'
	end

	# Root Page for Testing
	root :to => "website/pages#index"

	# Mount Engines
	mount PhcdevworksAccountsDevise::Engine, :at => '/'
	mount PhcdevworksAccountsStripe::Engine => "/"

end
