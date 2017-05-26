class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :pelicula_id
      t.string :integer
      t.integer :user_id
      t.text :comentario

      t.timestamps
    end
  end
end
