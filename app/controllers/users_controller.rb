# frozen_string_literal: true

# Controller for creating users
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user]) # not done yet!
    if @user.save
      # handle save
    else
      render 'new'
    end
  end
end
