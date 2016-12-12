class Image < ApplicationRecord
  belongs_to :user #user 를 레퍼런스로 잡아서 스캐폴드를 만들었기때문에
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  def picture_size
  	if piture.size > 5.megabytes
  		error.add(:picture, "should be less than 5 MB")
  	end
  	

  end
end
