require './test/test_helper'
require './lib/timesheet'

class TimesheetTest < Minitest::Test
  def test_instantiation
    timesheet = Timesheet.new('1', '2', '2015-01-01', '75')
    assert_instance_of Timesheet, timesheet
  end

  def test_attributes
    employee_id = '5'
    project_id = '7'
    date = '2015-01-01'
    minutes = '120'
    timesheet = Timesheet.new(employee_id, project_id, date, minutes)
    assert_instance_of Integer, timesheet.employee_id
    assert_instance_of Integer, timesheet.project_id
    assert_instance_of Date, timesheet.date
    assert_instance_of Integer, timesheet.minutes
  end
end
