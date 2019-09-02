class AlbumSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description, :total_played, :artist_name

  attribute :release_date do |object|
    object.release_date&.strftime('%d/%m/%Y')
  end

  belongs_to :artist
end
