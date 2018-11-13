class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :slug, null: false

      t.timestamps null: false
      t.index :slug, unique: true
    end
  end
end
