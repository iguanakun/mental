class Monitoring < ApplicationRecord
  validate :required_either_columns
  belongs_to :user

  private

  def required_either_columns
    return if fact.present? || mind.present? || feel.present? || body.present? || behavior.present?
    errors.add(:base, 'Data is invalid')
  end
end
