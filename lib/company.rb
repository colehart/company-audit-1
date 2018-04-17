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

  def load_employees(filename)
    path = "./data/#{filename}"
    import_msg = { success: true, error: nil }
    require "pry";binding.pry
    poss_employee_data = CSV.foreach(path) do |row|
      return success: false if row.include?(nil)
      'success'
    end
  end

  # def self.from_csv(data = Hash.new(0))
  # employees_data = FileIO.load(data[:customers])
  # invoices_data = FileIO.load(data[:invoices])
  # invoice_items_data = FileIO.load(data[:invoice_items])
  # items_data = FileIO.load(data[:items])
  # merchants_data = FileIO.load(data[:merchants])
  # transactions_data = FileIO.load(data[:transactions])
  # attrs = {
  #   customer_repo: CustomerRepository.new(customers_data),
  #   invoice_item_repo: InvoiceItemRepository.new(invoice_items_data),
  #   invoice_repo: InvoiceRepository.new(invoices_data),
  #   item_repo: ItemRepository.new(items_data),
  #   merchant_repo: MerchantRepository.new(merchants_data),
  #   transaction_repo: TransactionRepository.new(transactions_data)
  # }
  # new(attrs)
  # end
end
