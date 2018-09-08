class Mutations::User::Update < GraphQL::Function
  argument :id, !types.ID
  argument :data, Types::Input::UserUpdateInput

  type Types::UserType

  def call(_obj, args, _ctx)
    user = User.find(args[:id])
    user.update(args[:data].to_h)
    user
  end
end
