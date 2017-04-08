Rails.application.routes.draw do
  get 'polls/start/:id', to: 'polls#start'

  get 'polls/result'
  post 'polls/vote'

  resources :tabulations
  get 'tabulations/generate/:id', to: 'tabulations#generate'
  resources :options
  resources :questions
  resources :categories
  resources :surveys
  resources :tracks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
