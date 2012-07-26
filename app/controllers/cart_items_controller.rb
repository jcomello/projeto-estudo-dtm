class CartItemsController < ApplicationController
    def index
      @cart_items = CartItem.all
    end

    def new
      @cart_item = CartItem.new
    end

    def edit
      @cart_item = CartItem.find(params[:id])
    end

    def create
      @cart_item = CartItem.new(params[:cart_item])

      respond_to do |format|
        if @cart_item.save
          format.html { redirect_to @cart_item, notice: 'Cart Item was successfully created.' }
          format.json { render json: @cart_item, status: :created, location: @cart_item }
        else
          format.html { render action: "new" }
          format.json { render json: @cart_item.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @cart_item = CartItem.find(params[:cart_item])

      respond_to do |format|
      if @cart_item.update_attributes(params[:cart_item])
        format.html { redirect_to @cart_item, notice: 'cart_item was successfully updated.' }
        format.json { head :no_content }
        else
        format.html { render action: "edit" }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
        end
      end
    end
end
