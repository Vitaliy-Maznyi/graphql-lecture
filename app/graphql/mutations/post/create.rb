class Mutations::Post::Create < GraphQL::Function
  argument :user_id, !types.ID
  argument :data, Types::Input::Post::CreateInput

  type Types::PostType

  def call(_obj, args, _ctx)
    user = ::User.find(args[:user_id])
    user.posts.create!(args[:data].to_h)
  end
end
