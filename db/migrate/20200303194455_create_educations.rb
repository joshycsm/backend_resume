class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
