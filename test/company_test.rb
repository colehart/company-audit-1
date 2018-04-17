require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test
  def test_instantiation
    company = Company.new
    assert_instance_of Company, company
  end

  def test_attributes
    company = Company.new
    assert_empty company.employees
    assert_empty company.projects
    assert_empty company.timesheets
  end

  def test_load_employee_data
    company = Company.new
    company.load_employees('bad_employees.csv')
  end
end
