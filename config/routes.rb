Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'about', to: 'pages#about', as: 'about'
  get "help", to: "pages#help", as: 'help'
  get 'contact', to: 'pages#contact', as: 'contact'
  # dashboard for now, can change soooner or later
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard' 

  get 'therapist_dashboard' to: 'pages#therapist_dashboard', as: 'therapist_dashboard'

  resources :badhabitlist, only: [:show] do
    resources :badhabits, only: [:index, :new, :create]
  end
  resources :badhabits, only: [:show, :edit, :update, :destroy]

  resources :bucketlist, only: [:show] do
    resources :bucketlistitems, only: [:index, :new, :create]
  end
  resources :bucketlistitems, only: [:show, :edit, :update, :destroy]

  resources :careergoallist, only: [:show] do
    resources :careergoals, only: [:index, :new, :create]
  end
  resources :careergoals, only: [:show, :edit, :update, :destroy]

  resources :currentlegacy, except: [:index] do
    resources :currentlegacydisconnect, only: [:index, :new, :create]
  end
  resources :currentlegacydisconnect, only: [:show, :edit, :update, :destroy]

  resources :travellist, only: [:show] do
    resources :traveldestinations, only: [:index, :new, :create]
  end
  resources :traveldestinations, only: [:show, :edit, :update, :destroy]

  resources :financialgoallist, only: [:show] do
    resources :financialgoals, only: [:index, :new, :create]
  end
  resources :financialgoals, only: [:show, :edit, :update, :destroy]

  resources :futureregretlist, only: [:show] do
    resources :futureregrets, only: [:index, :new, :create]
  end
  resources :futureregrets, only: [:show, :edit, :update, :destroy]
  
  resources :peoplemissed, only: [:show] do
    resources :persons, only: [:index, :new, :create]
  end
  resources :persons, only: [:show, :edit, :update, :destroy]

  resources :careergoallist, only: [:show] do
    resources :careergoals, only: [:index, :new, :create]
  end
  resources :careergoals, only: [:show, :edit, :update, :destroy]

  resources :familygoallist, only: [:show] do
    resources :familygoals, only: [:index, :new, :create]
  end
  resources :familygoals, only: [:show, :edit, :update, :destroy]

  resources :publicgoallist, only: [:show] do
    resources :publicgoals, only: [:index, :new, :create]
  end
  resources :publicgoals, only: [:show, :edit, :update, :destroy]

  resources :purpose, except: [:index]

  resources :dreamlifelist, only: [:show] do
    resources :dreamlifecomponents, only: [:index, :new, :create]
  end
  resources :dreamlifecomponents, only: [:show, :edit, :update, :destroy]

  resources :healthgoallist, only: [:show] do
    resources :healthgoals, only: [:index, :new, :create]
  end
  resources :healthgoals, only: [:show, :edit, :update, :destroy]

  resources :endgame, except: [:index]

  resources :dreamlifelist, only: [:show] do
    resources :dreamlifecomponents, only: [:index, :new, :create]
  end
  resources :dreamlifecomponents, only: [:show, :edit, :update, :destroy]

  resources :mistakeslist, only: [:show] do
    resources :mistakes, only: [:index, :new, :create]
  end
  resources :mistakes, only: [:show, :edit, :update, :destroy]

  resources :gratefullist, only: [:show] do
    resources :gratefulfors, only: [:index, :new, :create]
  end
  resources :gratefulfors, only: [:show, :edit, :update, :destroy]

  resources :traumalist, only: [:show] do
    resources :traumas, only: [:index, :new, :create]
  end
  resources :traumas, only: [:show, :edit, :update, :destroy]

end
