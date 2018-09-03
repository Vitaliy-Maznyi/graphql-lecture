class Resolvers::GetPostComments < GraphQL::Function
  argument :post_id, !types.ID
  type Types::CommentType.to_list_type

  def call(_obj, args, _ctx)
    Post.find(args[:post_id]).comments
  end
end
