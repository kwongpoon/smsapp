Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sms#index'
  get 'sms/index'
  post 'sms/send_sms', to: 'sms#send_sms'
end
