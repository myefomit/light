module Api::Controllers::Book
  class Index
    include Api::Action
    accept :json

    def call(params)
      books = BookRepository.all
      self.body = Api::Presenters::Books::Index.new(books).render
    end

  end
end