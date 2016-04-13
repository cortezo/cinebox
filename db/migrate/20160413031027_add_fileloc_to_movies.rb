class AddFilelocToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :file_loc, :string
  end
end
