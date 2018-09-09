Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  description 'list of all available mutations'

  field :create_user, function: Mutations::User::Create.new
  field :update_user, function: Mutations::User::Update.new

  field :create_post, function: Mutations::Post::Create.new
  field :update_post, function: Mutations::Post::Update.new
  field :delete_post, function: Mutations::Post::Delete.new

  field :create_comment, function: Mutations::Comment::Create.new
  field :update_comment, function: Mutations::Comment::Update.new
  field :delete_comment, function: Mutations::Comment::Delete.new
end
