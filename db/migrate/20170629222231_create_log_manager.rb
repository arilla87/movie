class CreateLogManager < ActiveRecord::Migration[5.1]
  def change
    create_table :log_managers do |t|
      t.string :user
      t.text :exception_message
      t.string :tag
    end
  end
end
