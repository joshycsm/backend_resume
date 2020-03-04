class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
      t.string :job_title
      t.string :date
      t.string :location
      t.string :description
      t.string :detailed_description

      t.timestamps
    end
  end
end
