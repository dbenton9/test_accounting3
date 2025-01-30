class Api::V1::UnsecureController < ApiController
  def index
    render json: { message: 'Hello World!' }
  end

  def create
    render json: { message: 'Created!' }
  end

  def update
    binding.pry
    render json: { message: 'Updated!' }
  end
end
