Types::Input::Post::UpdateInput = GraphQL::InputObjectType.define do
  name 'Post_UpdateAttributes'
  description 'list of post attributes which can be updated'

  argument :title, types.String
  argument :text, types.String
end
