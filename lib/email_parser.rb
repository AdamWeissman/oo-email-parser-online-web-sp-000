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
    unless @email_addresses.include(",")
      @email_addresses = @email_addresses.split(",")
    else
      @email_addresses = @email_addresses.gsub(/\s+/, "")
      @email_addresses = @email_addresses.split(",")
    end
=begin
      @email_addresses.split(" ")
    else @email_addresses.include(",")
      @email_addresses.split(",")
    end
    @email_addresses = @email_addresses.uniq
=end
  end
  
end