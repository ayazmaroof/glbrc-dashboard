class CreateAppLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :app_links do |t|
      t.string :name, null: false
      t.string :description
      t.string :color
      t.boolean :default_status, default: false
      t.string :link, null: false

      t.timestamps
    end
    add_index :app_links, :name, unique: true
  end
end
