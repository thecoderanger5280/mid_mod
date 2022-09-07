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
end