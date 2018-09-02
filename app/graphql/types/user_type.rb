Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'User record'

  field :id, !types.ID
  field :first_name, types.String
  field :last_name, types.String
  field :email, types.String
  field :phone_number, types.String
  field :full_name, types.String,
    resolve: ->(user, _args, _ctx) do
      user.full_name
    end
end
