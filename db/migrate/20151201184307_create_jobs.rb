class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
