class Mutations::Post::Delete < GraphQL::Function
  argument :id, !types.ID

  type Types::PostType

  def call(_obj, args, _ctx)
    post = ::Post.find(args[:id])
    post.destroy
  end
end
