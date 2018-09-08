Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'list of all available top level queries'

  field :users, function: Resolvers::GetUsers.new
  field :user, function: Resolvers::GetUser.new

  field :posts, function: Resolvers::GetPosts.new
  field :post, function: Resolvers::GetPost.new

  field :post_comments, function: Resolvers::GetPostComments.new
end
