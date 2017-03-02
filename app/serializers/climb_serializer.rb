# frozen_string_literal: true

# :nodoc:
class ClimbSerializer < ActiveModel::Serializer
  attributes :id, :date, :grade

  def date
    object.date.strftime('%b %e')
  end
end
