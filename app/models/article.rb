class Article < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  validates_length_of :body, :minimum => 20
end
