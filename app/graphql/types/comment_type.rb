Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'Comment type'

  field :id, !types.ID
  field :body, types.String
  field :commenter, Types::UserType,
    property: :user,
    description: 'returns the author of the comment',
    resolve: ->(comment, _args, _ctx) do
      BatchLoader.for(comment.user_id).batch do |user_ids, batch_loader|
        User.where(id: user_ids).each do |user|
          batch_loader.call(user.id, user)
        end
      end
    end
end
