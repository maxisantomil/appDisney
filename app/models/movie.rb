class Movie < ApplicationRecord
    has_many :character_movies
    has_many :characters, through: :character_movies

    has_many :genre_movies
    has_many :genres, through: :genre_movies
end
