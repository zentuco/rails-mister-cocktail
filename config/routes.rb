Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end
  root to: "cocktails#index"
end
