class UsersController < ApplicationController
  def index
    UserMailer.example(User.new(email: '')).deliver
    @users = User.all
  end
end
