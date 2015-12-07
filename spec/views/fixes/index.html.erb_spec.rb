require 'rails_helper'

RSpec.describe "fixes/index", type: :view do
  before(:each) do
    assign(:fixes, [
      Fix.create!(
        :customer_id => 1,
        :address_id => 2,
        :category_id => 3
      ),
      Fix.create!(
        :customer_id => 1,
        :address_id => 2,
        :category_id => 3
      )
    ])
  end

  it "renders a list of fixes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
