require 'rspec'
require './lib/employee'
require './lib/department'

RSpec.describe Department do
  describe '#initialize' do
    it 'exists' do
      customer_service = Department.new("Customer Service")

      expect(customer_service).to be_an_instance_of(Department)
    end

    it 'has a name' do
      customer_service = Department.new("Customer Service")
      
      expect(customer_service.name).to eq("Customer Service")
    end

    it 'has a list of employees' do
      customer_service = Department.new("Customer Service")
      
      expect(customer_service.employees).to eq([])
    end
  end

  describe '#hire' do
    it 'can hire employees' do
      customer_service = Department.new("Customer Service")
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

      customer_service.hire(bobbi)
      customer_service.hire(aaron)

      expect(customer_service.employees).to eq([bobbi, aaron])
    end
  end

  describe '#expense' do
    it 'has a tally of expenses' do
      customer_service = Department.new("Customer Service")
      
      expect(customer_service.expenses).to eq(0)
    end

    it 'can add expenses' do
      customer_service = Department.new("Customer Service")
      
      customer_service.expense(100)
      customer_service.expense(25)

      expect(customer_service.expenses).to eq(125)
    end
  end
end