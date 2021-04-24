Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  #
  #
  namespace 'api' do
    namespace 'v1' do
      scope 'authors/' do
        get 'show/:id', to: 'authors#show', as: 'show_author'
        post 'create', to: 'authors#create', as: 'create_author'
        get 'my_movies/:id', to: 'authors#my_movies', as: 'Authors_movies'
      end
    end

    namespace 'v2' do
      scope 'movies/' do
        get 'index', to: 'movie#index', as: :'index_movie'
        get 'show/:id', to: 'movie#show', as: 'show_movie'
        post 'create', to: 'movie#create', as: 'create_movie'
        delete 'destroy/:id', to:'movie#destroy', as: 'delete_movie'
        patch 'update/:id', to:'movie#update', as: 'updates_movie'
      end
    end
  end

  end

