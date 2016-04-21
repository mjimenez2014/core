class Iat < ActiveRecord::Base
  include UniqueRandomField

  before_create { set_unique_random_field :auth_token }

  belongs_to :user

end
