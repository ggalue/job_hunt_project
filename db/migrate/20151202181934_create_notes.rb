class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :comment
      t.date :date
      t.string :status

      t.timestamps null: false
    end
  end
end
