class Api::V1::TestsController < ApiController
  def index
    render json: { message: 'Index!' }
  end

  def update
    render json: { message: 'Updated!' }
  end

  def create
    render json: { message: 'Created!' }
  end

  private

  def test_params
    params.fetch(:test, {}).permit(:name, :description)
  end
end

