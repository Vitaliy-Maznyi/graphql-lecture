Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'Comment type'

  field :id, !types.ID
  field :body, types.String
  field :commenter, Types::UserType,
    property: :user,
    resolve: ->(comment, _args, _ctx) do
      BatchLoader.for(comment.user_id).batch do |user_ids, batch_loader|
        User.where(id: user_ids).each do |user|
          batch_loader.call(user.id, user)
        end
      end
    end
end
