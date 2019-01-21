# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing_page#index'

  devise_for :coordinators, controllers: {
    sessions: "coordinators/sessions",
    registrations: "coordinators/registrations",
    confirmations: "coordinators/confirmations",
    passwords: "coordinators/passwords"
  }
  devise_for :students, controllers: {
    sessions: "students/sessions",
    registrations: "students/registrations",
    confirmations: "students/confirmations",
    passwords: "students/passwords"
  }

  namespace :students do
    resources :dashboard, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
