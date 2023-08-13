class Mutations::Artist::UpdateArtist < Mutations::BaseMutation
    field :artist, Types::ArtistType

    argument :id, ID, null: false

    def resolve(id: )
        @artist = Artist.find(id)
        if @artist.destroy
            {
                artist: @artist,
                errors: []
            }
        else
            {
                artist: nil,
                errors: @artist.errors.full_messages
            }
        end
    end
end
