class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
