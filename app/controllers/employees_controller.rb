class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
  end

  def create
    @employee = Employee.new
    @employee[:first_name] = params[:employee][:first_name]
    @employee[:last_name] = params[:employee][:last_name]
    @employee[:age] = params[:employee][:age]
    @employee[:gender] = params[:employee][:gender]
    @employee[:phone_number] = params[:employee][:phone_number]
    @employee[:email_address] = params[:employee][:email_address]
    @employee[:occupation] = params[:employee][:occupation]
    @employee.save

    redirect_to employee_path(@employee)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(first_name: params[:employee][:first_name], last_name: params[:employee][:last_name], age: params[:employee][:age], gender: params[:employee][:gender], phone_number: params[:employee][:phone_number], email_address: params[:employee][:email_address], occupation: params[:employee][:occupation])
    redirect_to employee_path(@employee)
  end
end
