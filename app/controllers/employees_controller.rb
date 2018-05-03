class EmployeesController < ApplicationController
    before_action :fetch_employee, only: [:show, :edit, :destroy, :update]
    def index 
        @employees = Employee.all
        @dogs = Dog.all
    end
    
    def show
    end

    def new 
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(set_params)
        if @employee.valid?
            redirect_to @employee
        else
            flash[:errors] = "This is an error"
        end
    end

    def edit
        @dogs = Dog.all
    end

    def update
        @employee.update(set_params)
        redirect_to 
    end

   def  destroy
        @employee.destroy
        redirect_to employees_path
   end


private 

def fetch_employee
    @employee = Employee.find(params[:id])
end

def set_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
end


end
