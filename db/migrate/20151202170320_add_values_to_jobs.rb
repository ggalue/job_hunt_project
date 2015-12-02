class AddValuesToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :date, :datetime
  end
end
