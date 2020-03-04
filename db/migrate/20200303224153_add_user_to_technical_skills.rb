class AddUserToTechnicalSkills < ActiveRecord::Migration[6.0]
  def change
    add_reference :technical_skills, :user, null: false, foreign_key: true
  end
end
