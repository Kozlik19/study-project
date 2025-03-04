# frozen_string_literal: true

# Заголовок и текст одной статьи
Rails.application.routes.draw do
  root 'articles#index'

  resources :articles do
    resources :comments
  end
end
