class Mutations::Post::Update < GraphQL::Function
  argument :id, !types.ID
  argument :data, Types::Input::Post::UpdateInput

  type Types::PostType

  def call(_obj, args, _ctx)
    post = ::Post.find(args[:id])
    post.update(args[:data].to_h)
    post
  end
end
