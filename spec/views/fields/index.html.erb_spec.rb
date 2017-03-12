require 'rails_helper'

RSpec.describe "fields/index", type: :view do
  before(:each) do
    assign(:fields, [
      Field.create!(
        :field_name => "Field Name",
        :field_type => 2
      ),
      Field.create!(
        :field_name => "Field Name",
        :field_type => 2
      )
    ])
  end

  it "renders a list of fields" do
    render
    assert_select "tr>td", :text => "Field Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
