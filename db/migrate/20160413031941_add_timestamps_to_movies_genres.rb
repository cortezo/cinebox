class AddTimestampsToMoviesGenres < ActiveRecord::Migration
  def change
    add_column :movies, :created_at, :datetime
    add_column :movies, :updated_at, :datetime
    add_column :genres, :created_at, :datetime
    add_column :genres, :updated_at, :datetime
  end
end
