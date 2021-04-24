class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :movie_type
      t.string :censor
      t.references :author, foreign_key: true

    end
  end
end
