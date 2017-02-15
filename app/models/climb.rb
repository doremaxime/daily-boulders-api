# frozen_string_literal: true

# :nodoc:
class Climb < ApplicationRecord
  validates :date, presence: true
  validates :grade, presence: true
end
