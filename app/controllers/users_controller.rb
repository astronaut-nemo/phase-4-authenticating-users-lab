class UsersController < ApplicationController
    # GET /me
    def show
        # FInd a user in teh database using the user id from the hash session
        user = User.find_by(id: session[:user_id])
        # Return the user as a JSON object
        render json: user, status: :ok
    end
end
