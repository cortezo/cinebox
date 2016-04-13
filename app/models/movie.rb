class Movie < ActiveRecord::Base
  belongs_to :genre, foreign_key: :genre_id
end