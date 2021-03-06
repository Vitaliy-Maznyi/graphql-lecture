class Mutations::User::Create < GraphQL::Function
  argument :data, Types::Input::User::CreateInput

  type Types::UserType

  def call(_obj, args, _ctx)
    ::User.create!(args[:data].to_h)
  end
end
