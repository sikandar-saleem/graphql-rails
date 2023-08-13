class Types::RoleType < Types::BaseObject
    field :id, ID, null: false
    field :name,  String, null: false
    field :priority, Integer, null: false
    field :user, Types::UserType, null: false
end