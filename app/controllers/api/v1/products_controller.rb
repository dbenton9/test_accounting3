class Api::V1::ProductsController < ApiController
# before_action -> { doorkeeper_authorize! :read, :write, :admin }, only: %i[index]
before_action -> { doorkeeper_authorize! :write }, only: %i[create]
before_action -> { doorkeeper_authorize! :public }, only: %i[update]
before_action only: [:index] do
  doorkeeper_authorize! :read, :admin, :write
end

  before_action :get_product, only: %i[update]
  def index
    render json: Product.all
  end

  def create
    render json: Product.create(products_params)
  end

  def update
    @product.update(products_params)
    render json: @product
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.fetch(:product).permit(:id, :name, :cost)
  end
end
