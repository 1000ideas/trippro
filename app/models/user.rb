class User < ActiveRecord::Base
include L::Concerns::LazyUser
  # attr_accessible :title, :body
end
