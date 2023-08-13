class Types::UserType < Types::BaseObject
    field :id, ID, null: false
    field :name,  String, null: false
    field :email, String, null: false
    field :role, Types::RoleType, null: false
end