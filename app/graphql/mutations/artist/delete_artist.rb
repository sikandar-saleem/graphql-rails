class Mutations::Artist::DeleteArtist < Mutations::BaseMutation
    # null: false, null: false
    field :artist, Types::ArtistType

    argument :id, ID

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
