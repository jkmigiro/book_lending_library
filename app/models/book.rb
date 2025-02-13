
class Book <ActiveRecord::Base
  has_many :borrowings, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true

  def available?
    borrowings.where(returned_at: nil).empty?
  end
end
