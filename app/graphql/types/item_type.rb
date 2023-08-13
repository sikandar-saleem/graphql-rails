class Types::ItemType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: true
    field :image_url, String, null: true
    field :artist_id, Integer, null: false
    field :artist, Types::ArtistType, null: false
    # field :user,   Types::UserType
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end
