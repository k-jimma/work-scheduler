class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validate :end_after_start

  private

  def end_after_start
    return if end_at.blank? || start_at.blank?
    if end_at < start_at
      errors.add(:end_at, "は開始日以降にしてください")
    end
  end

end
