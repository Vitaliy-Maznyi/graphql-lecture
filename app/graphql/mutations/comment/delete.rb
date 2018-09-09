class Mutations::Comment::Delete < GraphQL::Function
  argument :id, !types.ID

  type Types::CommentType

  def call(_obj, args, _ctx)
    comment = ::Comment.find(args[:id])
    comment.destroy
  end
end
