Itemized::Application.routes.draw do
  
  root :to => 'home#index'
  match 'date/:year/:month/:day' => 'home#date', :as => "date"
  match 'filing/:id/schedule/:sked(/:line)' => 'home#show', :as => "skeds"

end
