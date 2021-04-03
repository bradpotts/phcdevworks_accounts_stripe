Rails.application.routes.draw do

# Root Test Path
root :to => "website/pages#index"





mount PhcdevworksAccountsStripe::Engine => "/"
end
