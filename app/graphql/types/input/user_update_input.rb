Types::Input::UserUpdateInput = GraphQL::InputObjectType.define do
  name 'User_UpdateAttributes'
  description 'list of user attributes which can be updated'

  argument :first_name, types.String
  argument :last_name, types.String
  argument :phone_number, types.String
end
