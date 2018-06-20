class ReviewsController < ApplicationController


  def create
    @review = Review.new

     @review.name = params[:review][:name]
     @review.description = params[:review][:description]
     @review.url = params[:review][:url]
     @review.price_in_cents = params[:review][:price_in_cents]


   if  @review.save
       redirect_to :index
        flash[:success] = "review successful added!"
     else
       render :new
   end
  end

  def destroy
     @review       = review.find(params[:id])
     @review.delete
     redirect_to "/reviews"
     flash[:success] = "review successfully deleted!"

  end







end
