require "lotus/entity"

class Book
  include Lotus::Entity
  attributes :title, :author, :genre, :created_at
end
