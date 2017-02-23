# frozen_string_literal: true
class AddUserToClimbs < ActiveRecord::Migration[5.0]
  def change
    add_reference :climbs, :user, index: true, foreign_key: true
  end
end
