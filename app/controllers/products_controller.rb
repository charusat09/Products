class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def update
    @product = Product.find(params[:id])
   if @product.update_attributes(product_params)
      flash[:notice] = "Ad updated successfully."
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
 
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

      if @product.save
        flash[:notice] = "Ad created successfully."
        redirect_to(:controller => 'Products' ,:action => 'index')
      else
         render('new')
      end
  end

  def edit
    @product = Product.find(params[:id])
  end

  

  def destroy
    product = Product.find(params[:id]).destroy

    flash[:notice] = "Ad '#{product.ad_title}' destroyed successfully."
    redirect_to(:action => 'index')
  end

  private
    def product_params
     params.require(:product).permit(:ad_title, :rent_type, :prise, :area, :owner_type, :condition, :extra)
    end
end
