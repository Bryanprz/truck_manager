class UsersController < ApplicationController
  def register
    render 'devise/registrations/new'
  end
end
