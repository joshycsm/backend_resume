class AddUserToTechnicalProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :technical_projects, :user, null: false, foreign_key: true
  end
end
