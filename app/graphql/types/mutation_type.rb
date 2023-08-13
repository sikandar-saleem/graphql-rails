module Types
  class MutationType < Types::BaseObject
    # field :create_artist, mutation: Mutations::Artist::CreateArtist
    # field :delete_artist, mutation: Mutations::Artist::DeleteArtist
    
    field :create_user, mutation: Mutations::User::CreateUser
    field :login_user, mutation: Mutations::User::LoginUser


    # field :create_item_mutation, mutation: Mutations::CreateItemMutation
    
  end
end
