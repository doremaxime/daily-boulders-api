# frozen_string_literal: true

class CreateClimbs < ActiveRecord::Migration[5.0]
  def change
    create_table :climbs do |t|
      t.date :date, null: false
      t.string :grade, null: false

      t.timestamps null: false
    end
  end
end
