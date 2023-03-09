class UserController < ApplicationController
    attr_accessor :name, :idade
    def lista
      json = Kredis.json "users"
      @users = json.value || []
    end
  
    def cadastro
      integer = Kredis.integer "user_id"
      json = Kredis.json "users"
  
      users = json.value || []
      integer.value = (integer.value || 0) + 1
      params["id"] = integer.value
  
      users << {
        id: params["id"],
        name: params["name"],
        idade: params["idade"]
      }
  
      json.value = users
  
      redirect_to action: "lista" 
    end
  
    def find_user
      @json = Kredis.json "users"
      @especified_user = @json.value.each { |id| @user = id if id["id"] == params["id"].to_i }
    end
  
    def show
      find_user
    end
  
    def edit
      find_user
    end
  
    def update
  
      redirect_to action: "lista"
    end
  
    def destroy
      find_user
      ind = 0 
      users = @json.value
  
      users.each_with_index { |hash, index| ind = index if hash[:id] == params[:id].to_i }
      users.delete_at(ind)
  
      @json.value = users
  
    end
  
  end
    