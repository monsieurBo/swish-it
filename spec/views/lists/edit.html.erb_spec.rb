require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :type => 1,
      :user => nil
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input[name=?]", "list[name]"

      assert_select "input[name=?]", "list[type]"

      assert_select "input[name=?]", "list[user_id]"
    end
  end
end