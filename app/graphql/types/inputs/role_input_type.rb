class Types::Inputs::RoleInputType < GraphQL::Schema::InputObject
    argument :name, String, required: true
    argument :priority, Integer, required: true
end
