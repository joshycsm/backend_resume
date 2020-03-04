class AddUserToWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    add_reference :work_experiences, :user, null: false, foreign_key: true
  end
end
