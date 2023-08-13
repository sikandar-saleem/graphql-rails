class Mutations::User::CreateUser < Mutations::BaseMutation
    field :user, Types::UserType
    field :errors, [String], null: false
    
    argument :name, String
    argument :email, String
    argument :password, String
    argument :role_attributes, Types::Inputs::RoleInputType

    def resolve(name:, email:, password:, role_attributes:)
        @user = User.new(name: name, email: email, password: password)
        @user.build_role(role_attributes.to_h)
        if @user.save
            {
                user: @user,
                errors: []
            }
        else
            {
                user: nil,
                errors: @user.errors.full_messages
            }
        end
    end
end
