class Mutations::Comment::Create < GraphQL::Function
  argument :user_id, !types.ID
  argument :post_id, !types.ID
  argument :data, Types::Input::Comment::CreateInput

  type Types::CommentType

  def call(_obj, args, _ctx)
    ::Comment.create!(comment_params(args))
  end

  private

  def comment_params(args)
    user = ::User.find(args[:user_id])
    post = ::Post.find(args[:post_id])
    args[:data].to_h.merge(user: user, post: post)
  end
end
