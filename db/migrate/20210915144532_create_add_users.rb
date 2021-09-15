class CreateAddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_users do |t|
      t.string :profile_image_id
      t.text :introduction

      t.timestamps
    end
  end
end
