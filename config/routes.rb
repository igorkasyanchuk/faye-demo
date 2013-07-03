Fayedemo::Application.routes.draw do
  resources :comments

  faye_server '/faye', timeout: 25 do
    map '/comments' => RealtimeCommentsController
    map default: :block
  end

  root :to => 'comments#index'
end
