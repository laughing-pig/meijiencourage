Rails.application.routes.draw do
  
  root to: 'toppages#home'

  post "lineid",to: "toppages#create"

  get "before_index",to: "lineids#before_index"
  get "after_index",to: "lineids#after_index"

  post "status",to: "lineids#status"
  delete "lineid_index",to: "lineids#destroy"
end
