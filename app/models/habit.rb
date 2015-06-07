class Habit < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :user_id, presence: true
  validates :title, presence: true
  validates :classification, presence: true
  validates :completed, presence: true
  validates :time_stamp, presence: true
  validates :quantifier, presence: true
  validates :quantifier_unit, presence: true
end
