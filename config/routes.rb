Itemized::Application.routes.draw do
  
  root :to => 'home#index'
  match 'filing/:id/schedule/:sked' => 'home#show', :as => "skeds"

end
