class Resolvers::GetPosts < GraphQL::Function
  type Types::PostType.to_list_type

  def call(_obj, _args, _ctx)
    Post.all
  end
end
