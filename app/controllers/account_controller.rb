class AccountController < ApplicationController
  def listAllUsers
  end

  def listUsersJson
	@data = User.all
  end
end
