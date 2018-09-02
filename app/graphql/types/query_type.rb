Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :users, function: Resolvers::GetUsers.new
  field :user, function: Resolvers::GetUser.new
end
