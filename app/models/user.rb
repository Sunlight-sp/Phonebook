class User < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :mob, length: { is: 10 }, allow_blank: true
end
