class SellerUserCommentsController < ApplicationController
  before_action :set_seller_user_comment, only: [:show, :edit, :update, :destroy]

  # GET /seller_user_comments
  # GET /seller_user_comments.json
  def index
    @seller_user_comments = SellerUserComment.all
  end

  # GET /seller_user_comments/1
  # GET /seller_user_comments/1.json
  def show
  end

  # GET /seller_user_comments/new
  def new
    @seller_user_comment = SellerUserComment.new
  end

  # GET /seller_user_comments/1/edit
  def edit
  end

  # POST /seller_user_comments
  # POST /seller_user_comments.json
  def create
    @seller_user_comment = SellerUserComment.new(seller_user_comment_params)

    respond_to do |format|
      if @seller_user_comment.save
        format.html { redirect_to @seller_user_comment, notice: 'Seller user comment was successfully created.' }
        format.json { render :show, status: :created, location: @seller_user_comment }
      else
        format.html { render :new }
        format.json { render json: @seller_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seller_user_comments/1
  # PATCH/PUT /seller_user_comments/1.json
  def update
    respond_to do |format|
      if @seller_user_comment.update(seller_user_comment_params)
        format.html { redirect_to @seller_user_comment, notice: 'Seller user comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @seller_user_comment }
      else
        format.html { render :edit }
        format.json { render json: @seller_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seller_user_comments/1
  # DELETE /seller_user_comments/1.json
  def destroy
    @seller_user_comment.destroy
    respond_to do |format|
      format.html { redirect_to seller_user_comments_url, notice: 'Seller user comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller_user_comment
      @seller_user_comment = SellerUserComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_user_comment_params
      params.fetch(:seller_user_comment, {})
    end
end
