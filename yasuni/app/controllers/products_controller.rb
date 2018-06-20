class ProductsController < ApplicationController

      def index
        @products = Product.all
      end


      def new
        @product = Product.new
      end

      def create
        @product = Product.new

         @product.name = params[:product][:name]
         @product.description = params[:product][:description]
         @product.url = params[:product][:url]
         @product.price_in_cents = params[:product][:price_in_cents]


       if  @product.save
           redirect_to "/products"
            flash[:success] = "Product successful added!"
         else
           render :new
       end
      end


      def show
        @product = Product.find(params[:id])
        @review = Review.new
      end



      def edit
        @product = Product.find(params[:id])
      end

      def update
          @product = Product.find(params[:id])


         @product.name = params[:product][:name]
         @product.description = params[:product][:description]
         @product.url = params[:product][:url]
         @product.price_in_cents = params[:product][:price_in_cents]

         if  @product.save
             redirect_to "/products/#{@product.id}"
              flash[:success] = "Product successful updated!"
           else
             render :edit
         end

      end

      def destroy
         @product       = Product.find(params[:id])
         @product.delete
         redirect_to "/products"
         flash[:success] = "Product successfully deleted!"

      end




end
