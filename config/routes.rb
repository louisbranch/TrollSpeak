Trollspeak::Application.routes.draw do
  resources :speeches, :only => [:new, :create]
  root :to => 'speeches#new'
end
