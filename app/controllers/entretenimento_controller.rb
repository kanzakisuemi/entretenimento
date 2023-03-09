class EntretenimentoController < ApplicationController

  def index

  end

  def movies
    @movies = []
    (1..8).each do
      title = Faker::Movie.title
      quote = Faker::Movie.quote
      @movies << {title: title, quote:quote}
    end
  end

  def tv_shows
    @tv_shows = []
    (1..4).each do
      coisas_estranhas = Faker::TvShows::StrangerThings.quote
      bob_esponja = Faker::TvShows::Spongebob.quote
      @tv_shows << {coisas_estranhas: coisas_estranhas, bob_esponja: bob_esponja}
    end
  end

  def songs
    @songs = []
    (1..8).each do
      genre = Faker::Music.genre
      band = Faker::Music.band
      @songs << {genre: genre, band: band}
    end
  end

  def characters
    @characters = []
    (1..4).each do
      bigbang = Faker::TvShows::BigBangTheory.character
      supernatural = Faker::TvShows::Supernatural.character
      game_of_thrones = Faker::TvShows::GameOfThrones.character
      @characters << {bigbang: bigbang, supernatural: supernatural, game_of_thrones: game_of_thrones}
    end
  end

  def books
    @books = []
    (1..8).each do
      genre = Faker::Book.genre
      author = Faker::Book.author
      title = Faker::Book.title
      @books << {genre: genre, author: author, title: title}
    end
  end

  def podcasts
    @podcasts = []
    (1..8).each do
      game = Faker::Game.title
      genre = Faker::Game.genre
      @podcasts << {game: game, genre: genre}
    end
  end

end
