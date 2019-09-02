class Album < ApplicationRecord
  belongs_to :artist

  validates :name, uniqueness: { scope: :artist_id,
                                 case_sensitive: false,
                                 message: 'Album exists for this artist' }

  scope :most_played, -> { order('total_played DESC') }

  def artist_name
    artist.name&.titleize
  end

end
