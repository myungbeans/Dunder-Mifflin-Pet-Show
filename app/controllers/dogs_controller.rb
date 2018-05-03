class DogsController < ApplicationController
    before_action :fetch_dog, only: [:show, :edit, :destroy, :update]
    def index 
        @dogs = Dog.all
        @employees = Employee.all
    end
    
    def show 
        
    end

    def create

    end

    def edit

    end

    def new 

    end

   def  destroy

   end


private 

def fetch_dog 
    @dog = Dog.find(params[:id])
end

end
