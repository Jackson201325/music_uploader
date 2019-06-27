class AddAttachmentPhotoMusicMovieToUploaders < ActiveRecord::Migration[5.2]
  # Changes
  def self.up
    change_table :uploaders do |t|
      t.attachment :photo
      t.attachment :music
      t.attachment :movie
    end
  end

  def self.down
    remove_attachment :uploaders, :photo
    remove_attachment :uploaders, :music
    remove_attachment :uploaders, :movie
  end
end
