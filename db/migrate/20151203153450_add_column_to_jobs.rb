class AddColumnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_key, :string
  end
end
