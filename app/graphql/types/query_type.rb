Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :users, function: Resolvers::GetUsers.new
  field :user, function: Resolvers::GetUser.new

  field :posts, function: Resolvers::GetPosts.new
  field :post, function: Resolvers::GetPost.new
end
