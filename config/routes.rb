Itemized::Application.routes.draw do

  root :to => 'home#index'
  match 'date/:year/:month/:day' => 'home#date', :as => "date"
  match 'filings/type/:id' => 'home#form_types', :as => "form_types"
  match 'filing/:id/schedule/:sked(/:line)' => 'home#show', :as => "skeds"
  match 'manifest.webapp' => 'home#manifest'

end
