require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
  def test_instantiation
    project = Project.new('1', 'Widget Maker', '2015-01-01', '2018-01-01')
    assert_instance_of Project, project
  end

  def test_attributes
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    project = Project.new(project_id, name, start_date, end_date)
    assert_equal 123, project.project_id
    assert_instance_of Date, project.start_date
    assert_instance_of Date, project.end_date
  end
end
