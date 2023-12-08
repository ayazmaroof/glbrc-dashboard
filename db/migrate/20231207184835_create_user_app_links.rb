class CreateUserAppLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_app_links do |t|
      t.references :user, null: false, foreign_key: true
      t.references :app_link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
