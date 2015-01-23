class User
  include ActiveModel::Model
  attr_accessor :email
  validates :email, email: { mx: true }, presence: true
end
