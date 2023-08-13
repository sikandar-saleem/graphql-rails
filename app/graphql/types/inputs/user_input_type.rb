class Types::Inputs::UserInputType < GraphQL::Schema::InputObject
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :role_attributes, Types::Inputs::RoleInputType, required: true
end
