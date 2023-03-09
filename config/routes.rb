Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get      "/homepage",           to: "entretenimento#index",      as: :index
  get      "/filmes",             to: "entretenimento#movies",     as: :movies
  get      "/series",             to: "entretenimento#tv_shows",   as: :tv_shows
  get      "/musicas",            to: "entretenimento#songs",      as: :songs
  get      "/personagens",        to: "entretenimento#characters", as: :characters
  get      "/livros",             to: "entretenimento#books",      as: :books
  get      "/programas_de_radio", to: "entretenimento#podcasts",   as: :podcasts
  post     "/cadastrando",        to: "user#cadastro",             as: :cadastro
  get      "/registros",          to: "user#lista",                as: :lista
  get      "/show/:id",           to: "user#show",                 as: :show
  get      "/edit/:id/edit",      to: "user#edit",                 as: :edit
  patch    "/update/:id",         to: "user#update",               as: :update
  delete   "/destroy/:id",        to: "user#destroy",              as: :destroy


  # Defines the root path route ("/")
  # root "articles#index"
end
