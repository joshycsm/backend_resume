class AddUserToHeaders < ActiveRecord::Migration[6.0]
  def change
    add_reference :headers, :user, null: false, foreign_key: true
  end
end
