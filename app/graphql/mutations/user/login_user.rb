class Mutations::User::LoginUser < Mutations::BaseMutation
    field :token, String, null: true
    field :errors, [String], null: true

    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(email:, password:)
        user = User.find_by(email: email)
        if user&.authenticated?(password)
            { token: SecureRandom.hex, errors: [] }
        else
            { token: nil, errors: ['Invalid email or password'] }
        end
    end
end
