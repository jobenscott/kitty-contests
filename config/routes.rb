Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#tempRedirect"
  # get 'home/onlyAMother', as: "/only-a-mother"
  get '/only-a-mother/' => 'home#onlyAMother', :as => "/only-a-mother"
  post '/home/kitty_vote/' => 'home#kitty_vote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
