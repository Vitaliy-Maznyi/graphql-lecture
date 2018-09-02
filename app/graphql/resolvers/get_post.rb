class Resolvers::GetPost < GraphQL::Function
  argument :id, !types.ID

  type Types::PostType

  def call(_obj, args, _ctx)
    Post.find(args[:id])
  end
end
