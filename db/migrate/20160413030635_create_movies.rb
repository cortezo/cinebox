class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :resolution
      t.string :duration
      t.integer :rating
    end
  end
end
