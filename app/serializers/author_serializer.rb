class AuthorSerializer < ActiveModel::Serializer 
  # :username, :email, :bio, :avatar_url, :title, :tags
  attributes :name
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: AuthorPostSerializer
end
