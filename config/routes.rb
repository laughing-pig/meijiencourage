Rails.application.routes.draw do
  root to: 'toppages#about'
  get "index",to: "toppages#index"
end
