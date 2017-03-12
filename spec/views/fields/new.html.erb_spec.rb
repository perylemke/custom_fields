require 'rails_helper'

RSpec.describe "fields/new", type: :view do
  before(:each) do
    assign(:field, Field.new(
      :field_name => "MyString",
      :field_type => 1
    ))
  end

  it "renders new field form" do
    render

    assert_select "form[action=?][method=?]", fields_path, "post" do

      assert_select "input#field_field_name[name=?]", "field[field_name]"

      assert_select "input#field_field_type[name=?]", "field[field_type]"
    end
  end
end
