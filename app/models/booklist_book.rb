class BooklistBook < ActiveRecord::Base
  belongs_to :booklist
  belongs_to :book


end
