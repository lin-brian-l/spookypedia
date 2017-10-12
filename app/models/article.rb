class Article < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: :author_id
  belongs_to :category
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true

  after_initialize :init

  def init
    self.is_flagged ||= false
    self.is_published ||= false
  end
end