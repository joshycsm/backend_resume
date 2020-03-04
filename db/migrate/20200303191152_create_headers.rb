class CreateHeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :headers do |t|
      t.string :title
      t.string :personal_website
      t.string :git_hub
      t.string :linked_in
      t.string :email
      t.string :phone_number
      t.string :mission_statement

      t.timestamps
    end
  end
end
