class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :about
      t.string :poster
      t.references :show, foreign_key: true

      t.timestamps
    end
  end
end
