Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'User record'

  field :id, !types.ID
  field :first_name, types.String
  field :last_name, types.String
  field :email, types.String
  field :phone_number, types.String
  field :full_name, types.String,
    resolve: ->(user, _args, _ctx) do
      user.full_name
    end

  field :posts, Types::PostType.to_list_type,
    resolve: ->(user, _args, _ctx) do
      BatchLoader.for(user.id).batch(default_value: []) do |user_ids, batch_loader|
        Post.where(user_id: user_ids).each do |post|
          batch_loader.call(post.user_id) { |memo| memo << post }
        end
      end
    end
end
