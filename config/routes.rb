Mcparty::Application.routes.draw do
  root to: "main#index"
  resources :attendees
end
