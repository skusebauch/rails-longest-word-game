Rails.application.routes.draw do
  root "games#new"
  get 'new', to: 'games#new'
  post 'score', to: 'games#score'
end
