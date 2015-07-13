Rails.application.routes.draw do
  root to: 'main#index'

  resources :users
  resources :milestones

  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  
end

#    Prefix Verb   URI Pattern               Controller#Action
#     milestones GET    /milestones(.:format)          milestones#index
#                POST   /milestones(.:format)          milestones#create
#  new_milestone GET    /milestones/new(.:format)      milestones#new
# edit_milestone GET    /milestones/:id/edit(.:format) milestones#edit
#      milestone GET    /milestones/:id(.:format)      milestones#show
#                PATCH  /milestones/:id(.:format)      milestones#update
#                PUT    /milestones/:id(.:format)      milestones#update
#                DELETE /milestones/:id(.:format)      milestones#destroy
#           root GET    /                              main#index
#          users GET    /users(.:format)               users#index
#                POST   /users(.:format)               users#create
#       new_user GET    /users/new(.:format)           users#new
#      edit_user GET    /users/:id/edit(.:format)      users#edit
#           user GET    /users/:id(.:format)           users#show
#                PATCH  /users/:id(.:format)           users#update
#                PUT    /users/:id(.:format)           users#update
#                DELETE /users/:id(.:format)           users#destroy
#          login GET    /login(.:format)               sessions#new
#       sessions POST   /sessions(.:format)            sessions#create
#         logout DELETE /logout(.:format)              sessions#destroy
