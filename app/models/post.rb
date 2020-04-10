class Post < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 140 }
  validates :date_in, presence: true
  validates :date_out, presence: true
  validates :state, presence: true
  enum state: [:proposal, :in_progress ,:finished]

  scope :find_valid, -> { where("state > ?", :proposal) }
end
