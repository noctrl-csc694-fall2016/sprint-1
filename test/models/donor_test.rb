require 'test_helper'

class DonorTest < ActiveSupport::TestCase
  
  def setup
    @donor = Donor.new(id:999, first_name: "John", last_name: "Doe", 
    address: "123 Fake St", address2: "", city: "Phonyville", state: "PA", 
    zip: 43873, phone: "840-343-8778", email: "jd@yahoo.com", notes: "etc", 
    created_at: "2016-10-23 17:30:16", updated_at: "2016-10-23 17:30:16")
  end

  
  test "valid donor" do 
    assert @donor.valid?
  end

end