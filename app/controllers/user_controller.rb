class UsersController < Devise::SessionsController
  def new
  	@user = User.name
  end

end