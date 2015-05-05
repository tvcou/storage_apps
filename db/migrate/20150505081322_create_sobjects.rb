class CreateSobjects < ActiveRecord::Migration
  def change
    create_table :sobjects do |t|
      t.integer :type_id
      t.integer :pid
      t.string :name
      t.string :path
      t.text :memo

      t.timestamps null: false
    end
  end
end
