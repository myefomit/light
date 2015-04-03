require "representative/json"

module Api
  module Presenters
    module Books
      class Index

        attr_reader :books

        def initialize(books)
          @books = books
        end

        def render
          Representative::Json.new do |r|
            r.list_of :books, books do 
              r.element :id 
              r.element :author
              r.element :title
              r.element :genre
              r.element :created_at
            end
          end.to_s
        end

      end
    end
  end
end
