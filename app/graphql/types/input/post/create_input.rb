Types::Input::Post::CreateInput = GraphQL::InputObjectType.define do
  name 'Post_CreateAttributes'
  description 'list of post attributes needed for creating post record'

  argument :title, !types.String
  argument :text, !types.String
end
