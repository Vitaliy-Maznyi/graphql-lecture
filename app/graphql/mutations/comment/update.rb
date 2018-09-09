class Mutations::Comment::Update < GraphQL::Function
  argument :id, !types.ID
  argument :data, Types::Input::Comment::UpdateInput

  type Types::CommentType

  def call(_obj, args, _ctx)
    comment = ::Comment.find(args[:id])
    comment.update(args[:data].to_h)
    comment
  end
end
