class Mutations::Artist::CreateArtist < Mutations::BaseMutation
    field :artist, Types::ArtistType

    argument :first_name, String
    argument :last_name,  String
    argument :email, String

    def resolve(first_name:, last_name:, email:)
        @artist = Artist.new(first_name: first_name, last_name: last_name, email: email)
        if @artist.save
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
