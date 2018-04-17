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

  def test_doesnt_load_bad_employee_data
    company = Company.new
    import_msg = company.load_employees('bad_employees.csv')
    assert_equal 'bad data', import_msg[:error]
    assert_empty company.employees
  end

  def test_load_good_employee_data
    company = Company.new
    import_msg = company.load_employees('employees.csv')
    assert_equal nil, import_msg.values_at(:error)
    assert_equal 2, company.employees.length
  end
end
