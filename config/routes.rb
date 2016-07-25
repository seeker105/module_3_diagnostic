Rails.application.routes.draw do

  root 'finder#index'
  get '/search', to: 'finder#search'
end
