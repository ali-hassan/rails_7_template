Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :leads, only: [:create]
  resources :personal_info, except: [:index, :edit, :destroy]
  resources :business_info, only: [:edit, :update]
  resources :funding_info, only: [:edit, :update]
  get 'about' => 'landing#about'
  get 'products' => 'landing#product'
  get 'contact_us' => 'landing#contact_us'
  get 'blog_detail' => 'landing#blog_detail'
  get 'blog_feed' => 'landing#blog_feed'
  # Defines the root path route ("/")
  root "landing#index"
  get 'faqs', to: 'landing#faqs', as: :faqs

  resources :finalize, only: [:index, :create] do
    collection do
      post :resend_verification_code
    end
  end
  resources :upload_documents, only: [:new, :create] do
    member do
      delete :remove_third_bank_statement
      delete :remove_second_bank_statement
      delete :remove_first_bank_statement
      delete :remove_processing_statement
    end
  end
end
