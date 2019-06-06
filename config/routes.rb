Rails.application.routes.draw do
  root to: "home#tempRedirect"
  # get 'home/onlyAMother', as: "/only-a-mother"
  get '/only-a-mother/' => 'home#onlyAMother', :as => "/only-a-mother"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
