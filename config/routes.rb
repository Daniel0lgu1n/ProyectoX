Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "", to: "home#index"
end
