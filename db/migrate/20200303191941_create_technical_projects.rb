class CreateTechnicalProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :technical_projects do |t|
      t.string :name
      t.string :description
      t.string :deployed_app
      t.string :git_hub
      t.string :video
      t.string :detailed_description

      t.timestamps
    end
  end
end
