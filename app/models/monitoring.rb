class Monitoring < ApplicationRecord
  validate :required_either_columns

  private

  def required_either_columns
    return if fact.present? || mind.present? || feel.present? || body.present? || behavior.present?

    errors.add(:base, 'columns error')
  end
end
