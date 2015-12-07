require 'rails_helper'

RSpec.describe "fixes/new", type: :view do
  before(:each) do
    assign(:fix, Fix.new(
      :customer_id => 1,
      :address_id => 1,
      :category_id => 1
    ))
  end

  it "renders new fix form" do
    render

    assert_select "form[action=?][method=?]", fixes_path, "post" do

      assert_select "input#fix_customer_id[name=?]", "fix[customer_id]"

      assert_select "input#fix_address_id[name=?]", "fix[address_id]"

      assert_select "input#fix_category_id[name=?]", "fix[category_id]"
    end
  end
end
