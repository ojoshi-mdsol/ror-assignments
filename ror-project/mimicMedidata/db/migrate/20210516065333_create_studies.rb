class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string :name
      t.integer :age
      t.string :drug
      t.integer :phase
      t.string :symptoms

      t.timestamps
    end
  end
end
