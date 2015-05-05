class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.primary_key :id
      t.string :name

      t.timestamps null: false
    end
  end
end
