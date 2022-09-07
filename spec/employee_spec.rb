require 'rspec'
require './lib/employee'

RSpec.describe Employee do
  describe '#initialize' do
    it 'exists' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

      expect(bobbi).to be_an_instance_of(Employee)
    end

    it 'has a name' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      
      expect(bobbi.name).to eq("Bobbi Jaeger")
    end

    it 'has an age' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

      expect(bobbi.age).to eq(30)
    end

    it 'has a salary' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      
      expect(bobbi.salary).to eq(100000)
    end
  end
end