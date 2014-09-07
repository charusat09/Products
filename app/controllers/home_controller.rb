class HomeController < ApplicationController
  
 # layout 'try'
  def index
  	@ad_details = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  end

  def edit
    @product = Product.find(params[:id])
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

  def delete
  end

  private
    def product_params
     params.require(:product).permit(:ad_title, :rent_type, :prise, :area, :owner_type, :condition, :extra)
    end

end