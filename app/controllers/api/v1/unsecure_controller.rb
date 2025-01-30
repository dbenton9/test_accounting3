class Api::V1::UnsecureController < ApiController
  def index
    render json: { message: 'Hello World!' }
  end
end
