require 'test_helper'

class DonorsEditTest < ActionDispatch::IntegrationTest

  def setup
    @donor = donors(:andy)
  end

  test "unsuccessful edit" do
    get edit_donor_path(@donor)
    assert_template 'donors/edit'
    patch donor_path(@donor), params: { donor: { first_name:  "Joe",
                                                last_name: "White",
                                                address: "101 College Lane",
                                                address2: "APT 63",
                                                city: "Naperville",
                                                state: "IL",
                                                zip: "60606",
                                                phone: "815-963-8521",
                                                email: "foo@invalid",
                                                notes:"Bad email" } }

    assert_template 'donors/edit'
    assert_select "div.alert", true
  end
end
