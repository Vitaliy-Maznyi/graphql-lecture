Types::Input::User::CreateInput = GraphQL::InputObjectType.define do
  name 'User_CreateAttributes'
  description 'list of user attributes needed for creating user record'

  argument :first_name, !types.String
  argument :last_name, !types.String
  argument :email, !types.String
  argument :phone_number, types.String
end
