class Uploader < ApplicationRecord
  # Changes
  VALID_PHOTO_REGEX = /\Aimage\/.*\z/i
  VALID_VIDEO_REGEX = /\Avideo\/.*\z/i
  VALID_MUSIC_REGEX = /\Aimage\/.*\z/

  # photo validation
  has_attached_file :photo, styles: {large: "450x450>", thumb: "50x50#"}
  validates_attachment_content_type :photo, content_type: VALID_PHOTO_REGEX


  # music validation
  has_attached_file :music
  validates_attachment :music,
  :content_type => { :content_type => ["audio/mpeg", "audio/mp3"]},
  :file_type => {:matches => [/mp3\Z/]}

  # movie validation
  has_attached_file :movie, :styles => {
    :medium => {:geometry => "640x480", :format => 'mp4'},
    :thumb => {:geometry => "100x50#", :format =>'jpg', :time =>10}
  }, :processors => [:transcoder]
  validates_attachment_content_type :movie, content_type: VALID_VIDEO_REGEX
end
