require 'rails_helper'

RSpec.describe "fixes/show", type: :view do
  before(:each) do
    @fix = assign(:fix, Fix.create!(
      :customer_id => 1,
      :address_id => 2,
      :category_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
