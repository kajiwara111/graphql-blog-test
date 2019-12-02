Types::BlogTrainType = GraphQL::ObjectType.define do
  name "BlogTrain"
  field :id, !types.ID
  field :title, !types.String
  field :content, !types.String
end
