class DeleteColumFromComentarios < ActiveRecord::Migration[5.1]
  def change
  	remove_column :comentarios, :integer
  end
end
