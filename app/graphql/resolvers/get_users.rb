class Resolvers::GetUsers < GraphQL::Function
  type types[Types::UserType]
  # type Types::UserType.to_list_type the same as above

  def call(_obj, _args, _ctx)
    User.all
  end
end
