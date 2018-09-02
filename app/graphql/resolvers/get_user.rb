class Resolvers::GetUser < GraphQL::Function
  argument :id, !types.ID

  type Types::UserType

  def call(_obj, args, _ctx)
    User.find(args[:id])
  end
end
