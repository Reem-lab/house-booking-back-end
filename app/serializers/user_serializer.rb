class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :created_at
end
