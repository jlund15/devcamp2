class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, length: {minimum: 10, maximum: 1000 }
  after_create_commit { CommentBradcastjob.perform_later(self) }
end
