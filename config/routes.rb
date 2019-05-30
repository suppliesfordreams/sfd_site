Rails.application.routes.draw do
  
  get 'contacts/new'

  scope :module => 'buttercms' do
    get '/categories/:slug' => 'categories#show', :as => :buttercms_category
    get '/author/:slug' => 'authors#show', :as => :buttercms_author

    get '/blog/rss' => 'feeds#rss', :format => 'rss', :as => :buttercms_blog_rss
    get '/blog/atom' => 'feeds#atom', :format => 'atom', :as => :buttercms_blog_atom
    get '/blog/sitemap.xml' => 'feeds#sitemap', :format => 'xml', :as => :buttercms_blog_sitemap

    get '/blog(/page/:page)' => 'posts#index', :defaults => {:page => 1}, :as => :buttercms_blog
    get '/blog/:slug' => 'posts#show', :as => :buttercms_post
  end

  resources :charges
  
  get 'static_pages/home'
  
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/donate', to: 'static_pages#donate'
  
  resources :contacts, only: [:new, :create]

  get '/programs', to: 'static_pages#programs'
  
  get '/privacy', to: 'static_pages#privacy'
  
  get '/schools', to: 'static_pages#schools'
  
  get '/resources', to: 'static_pages#resources'
  
  get '/thanks', to: 'static_pages#thanks'
  
  get '/blog', to: 'buttercms#blog'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
