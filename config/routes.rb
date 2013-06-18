Itemized::Application.routes.draw do
  
  root :to => 'home#index'
  match 'filing/:id/schedule/:sked(/:line)' => 'home#show', :as => "skeds"

end
