class RelationshipsController < ApplicationController
  # POST /relationships
  # POST /relationships.json
  def create
   @relationship = current_user.relationships.build(friend_id: params[:friend_id])

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to profile_path(current_user.id), notice: "User followed!"}
      else
        format.html {redirect_to root_path, error: "Unable to follow user" }
      end
    end
  end

  def destroy
    @relationship = current_user.relationships.find_by_friend_id(params[:id])
    @relationship.destroy
    respond_to do |format|
        format.html { redirect_to profile_path(current_user.id),  notice: "No longer following."}
    end
  end


  private

  def relationship_params
    params.require(:relationship).permit(:user_id, :friend_id)
  end

end