Types::Input::Comment::CreateInput = GraphQL::InputObjectType.define do
  name 'Comment_CreateAttributes'
  description 'list of comment attributes needed for creating comment record'

  argument :body, !types.String
end
