Rails.application.routes.draw do
  root to: 'main#index'

  resources :users

  get    'milestones',          to: 'milestones#index',     as: 'milestones'
  post   'milestones',          to: 'milestones#create'
  get    'milestones/new',      to: 'milestones#new',       as: 'new_milestone'    
  get    'milestones/:id/edit', to: 'milestones#edit',      as: 'edit_milestone'
  get    'milestones/:id',      to: 'milestones#show',      as: 'milestone'
  put    'milestones/:id',      to: 'milestones#update'
  delete 'milestones/:id',      to: 'milestones#destroy'

  get    "weeks",               to: 'milestones#index_week', as: 'milestones_weeks'
  get    "weeks/:week",         to: 'milestones#show_week', as: 'milestone_by_week'


  get    'login',               to: 'sessions#new',        as: 'login'
  post   'sessions',            to: 'sessions#create'
  delete 'logout',              to: 'sessions#destroy',    as: 'logout'
 
  
end

#    Prefix Verb   URI Pattern               Controller#Action
#              root GET    /                              main#index
#             users GET    /users(.:format)               users#index
#                   POST   /users(.:format)               users#create
#          new_user GET    /users/new(.:format)           users#new
#         edit_user GET    /users/:id/edit(.:format)      users#edit
#              user GET    /users/:id(.:format)           users#show
#                   PATCH  /users/:id(.:format)           users#update
#                   PUT    /users/:id(.:format)           users#update
#                   DELETE /users/:id(.:format)           users#destroy
#        milestones GET    /milestones(.:format)          milestones#index
#                   POST   /milestones(.:format)          milestones#create
#     new_milestone GET    /milestones/new(.:format)      milestones#new
#    edit_milestone GET    /milestones/:id/edit(.:format) milestones#edit
#         milestone GET    /milestones/:id(.:format)      milestones#show
#                   PUT    /milestones/:id(.:format)      milestones#update
#                   DELETE /milestones/:id(.:format)      milestones#destroy
# milestone_by_week GET    /milestones/:week(.:format)    sessions#week
#             login GET    /login(.:format)               sessions#new
#          sessions POST   /sessions(.:format)            sessions#create
#            logout DELETE /logout(.:format)              sessions#destroy

