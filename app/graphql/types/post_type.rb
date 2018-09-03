Types::PostType = GraphQL::ObjectType.define do
  name 'Post'
  description 'Post type'

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

  field :post_comments, Types::CommentType.to_list_type,
    resolve: ->(post, _args, _ctx) do
      BatchLoader.for(post.id).batch(default_value: []) do |post_ids, batch_loader|
        Comment.where(post_id: post_ids).each do |comment|
          batch_loader.call(comment.post_id) { |memo| memo << comment }
        end
      end
    end
end
