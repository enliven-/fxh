require 'rails_helper'

RSpec.describe "fixes/edit", type: :view do
  before(:each) do
    @fix = assign(:fix, Fix.create!(
      :customer_id => 1,
      :address_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit fix form" do
    render

    assert_select "form[action=?][method=?]", fix_path(@fix), "post" do

      assert_select "input#fix_customer_id[name=?]", "fix[customer_id]"

      assert_select "input#fix_address_id[name=?]", "fix[address_id]"

      assert_select "input#fix_category_id[name=?]", "fix[category_id]"
    end
  end
end
