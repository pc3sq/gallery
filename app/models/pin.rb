class Pin < ActiveRecord::Base
  attr_accessible :description, :image


  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/jpg', 'image/gif']},
  														 size: { less_than: 10.megabytes }

  belongs_to :user
  has_attached_file :image #is a paperclip gem method

end
