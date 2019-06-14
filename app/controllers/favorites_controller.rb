class FavoritesController < ApplicationController

  # GET /favorites
  # GET /favorites.json

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.organization_id = params[:id]

    respond_to do |format|
      if @favorite.save
        format.html { redirect_to  request.referer , notice: 'Add as Favorite' }
        # format.json { render :show, status: :created, location: @favorite }
      else
        format.html { render :new }
        # format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite = Favorite.where(user_id: current_user.id, organization_id: params[:id]).first
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Remove from Favorite' }
      # format.json { head :no_content }
    end
  end



end
