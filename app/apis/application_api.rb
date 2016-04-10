class ApplicationApi < Grape::API
  format :json

  resource :hello do
    desc 'Return a Hello World message'
    get do
      { message: 'Hello Wonderful World, from Thumbnailr!' }
    end
  end

  add_swagger_documentation
end

