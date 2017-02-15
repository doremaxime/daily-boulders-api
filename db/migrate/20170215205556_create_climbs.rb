class CreateClimbs < ActiveRecord::Migration[5.0]
  def change
    create_table :climbs do |t|
      t.date :date
      t.integer :grade

      t.timestamps
    end
  end
end
