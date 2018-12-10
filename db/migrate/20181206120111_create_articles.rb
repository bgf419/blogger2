class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body # the text type will default to whatever type the database uses for text

      t.timestamps #creates columns with created_at and updated_At information
    end
  end
end
