class SellerUsersController < ApplicationController
  before_action :set_seller_user, only: [:show, :edit, :update, :destroy]

  # GET /seller_users
  # GET /seller_users.json
  def index
    @seller_users = SellerUser.all
  end

  # GET /seller_users/1
  # GET /seller_users/1.json
  def show
  end

  # GET /seller_users/new
  def new
    @seller_user = SellerUser.new
  end

  # GET /seller_users/1/edit
  def edit
  end

  # POST /seller_users
  # POST /seller_users.json
  def create
    @seller_user = SellerUser.new(seller_user_params)

    respond_to do |format|
      if @seller_user.save
        format.html { redirect_to @seller_user, notice: 'Seller user was successfully created.' }
        format.json { render :show, status: :created, location: @seller_user }
      else
        format.html { render :new }
        format.json { render json: @seller_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_users/1
  # PATCH/PUT /seller_users/1.json
  def update
    respond_to do |format|
      if @seller_user.update(seller_user_params)
        format.html { redirect_to @seller_user, notice: 'Seller user was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_user }
      else
        format.html { render :edit }
        format.json { render json: @seller_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_users/1
  # DELETE /seller_users/1.json
  def destroy
    @seller_user.destroy
    respond_to do |format|
      format.html { redirect_to seller_users_url, notice: 'Seller user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_user
      @seller_user = SellerUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_user_params
      params.fetch(:seller_user, {})
    end
end
