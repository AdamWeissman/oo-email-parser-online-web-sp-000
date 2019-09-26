# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize(email_addresses)
    @email_addresses = email_addresses.strip
  end
  
  def parse
    @email_addresses.split(",").collect {|x| x.gsub(/\s+/, "")}
=begin
      @email_addresses.split(" ")
    else @email_addresses.include(",")
      @email_addresses.split(",")
    end
    @email_addresses = @email_addresses.uniq
=end
  end
  
end