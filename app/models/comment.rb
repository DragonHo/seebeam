class Comment < ActiveRecord::Base
  belongs_to :beam
  belongs_to :user
end
