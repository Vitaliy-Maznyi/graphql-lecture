Types::Input::Comment::UpdateInput = GraphQL::InputObjectType.define do
  name 'Comment_UpdateAttributes'
  description 'list of comment attributes which can be updated'

  argument :body, types.String
end
