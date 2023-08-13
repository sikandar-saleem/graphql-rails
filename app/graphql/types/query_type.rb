module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType]
    
    field :artists, [Types::ArtistType]
    
    field :items_count, Integer
    field :item, Types::ItemType do
      argument :id, Int, required: true
    end

    field :items, [Types::ItemType]

    def items_count
      Item.all.count
    end

    def items
      Item.all
    end
    
    def item(id: )
      Item.find(id)
    end
    
    def artists
      Artist.all
    end

    def users
      User.all
    end

  end
end
