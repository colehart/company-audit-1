require 'csv'
require 'date'
require './modules/date_handler'

# Company class
class Company
  attr_reader :employees,
              :projects,
              :timesheets
  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def check_dataset(path)
    import_msg = Hash.new(success: true, error: nil)
    possible_dataset = CSV.read(path)
    possible_dataset.each do |data|
      import_msg.replace(success: false, error: 'bad data') if data.include?(nil)
    end
    import_msg
    require "pry";binding.pry

  end

  def load_employees(filename)
    path = "./data/#{filename}"
    import_msg = check_dataset(path)
    unless import_msg == { success: false, error: 'bad data' }
      CSV.foreach(path) { |row| @employees << row }
    end
    import_msg
  end
end
