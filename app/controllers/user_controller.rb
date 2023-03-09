class UserController < ApplicationController
  attr_accessor :name, :idade
  def lista
    @users = User.all
  end

  def cadastro
    User.connection
    User.create name: params[:name], idade: params[:idade]
    redirect_to action: "lista"
  end

=begin
  def find_user
    @user = User.find(params[:id])
  end
=end

  def show
    #find_user
    @user = User.find(params[:id])
  end

  def edit
    #find_user
    @user = User.find(params[:id])
  end

  def update
    #find_user
    @user = User.find(params[:id])
    @user.update(name: params[:name], idade: params[:idade])
    redirect_to lista_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to lista_path, status: :see_other
  end

end
