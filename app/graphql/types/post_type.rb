Types::PostType = GraphQL::ObjectType.define do
  name 'Post'
  description 'Post record'

  field :id, !types.ID
  field :title, types.String
  field :text, types.String
  field :author, Types::UserType,
    property: :user,
    resolve: ->(post, _args, _ctx) do
      BatchLoader.for(post.user_id).batch do |user_ids, batch_loader|
        User.where(id: user_ids).each do |user|
          batch_loader.call(user.id, user)
        end
      end
    end
end
