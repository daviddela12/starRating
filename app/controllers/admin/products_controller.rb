module Admin
  class ProductsController < ApplicationController
    include ReviewControl

    before_action :set_product, only: %i[show edit update destroy]

    # GET /products or /products.json
    def index
      @products = Product.all
    end

    # GET /products/1 or /products/1.json
    def show
      @review = review_init
    end

    # GET /products/new
    def new
      @product = Product.new
    end

    # GET /products/1/edit
    def edit
    end

    # POST /products or /products.json
    def create
      @product = Product.new(product_params)

      respond_to do |format|
        if @product.save
          format.html { redirect_to admin_product_url(@product), notice: "Product was successfully created." }
          format.json { render :show, status: :created, location: admin_product_url(@product) }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /products/1 or /products/1.json
    def update
      respond_to do |format|
        if @product.update(product_params)
          format.html { redirect_to admin_product_url(@product), notice: "Product was successfully updated." }
          format.json { render :show, status: :ok, location: admin_product_url(@product) }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /products/1 or /products/1.json
    def destroy
      @product.destroy
      respond_to do |format|
        format.html { redirect_to admin_products_url, notice: "Product was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private

      def set_product
        @product = Product.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:title, :description, :price)
      end
  end
end
