# frozen_string_literal: true

# :nodoc:
class Climb < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :grade, presence: true
end
