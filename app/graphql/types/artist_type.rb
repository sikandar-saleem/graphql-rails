module Types
    class ArtistType < Types::BaseObject
        field :id, ID, null: false
        field :first_name, String, null: false
        field :last_name, String
        field :full_name, String, null: false
        field :email, String, null: false
        field :items, [Types::ItemType]
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
end