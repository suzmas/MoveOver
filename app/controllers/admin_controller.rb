class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize

  def index
    @users = User.all
    @apartments = Apartment.all
  end

  def update
    user = User.find(params[:id])
    user.remove_role user.roles.first.name
    new_role = params[:role]
    user.add_role new_role
    redirect_to '/admin'
  end


  private

    def authorize
      if !current_user.has_role? :admin
        render text:"No administrative privileges"
      end
    end

end
