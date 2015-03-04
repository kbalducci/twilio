require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :who => "Who",
        :where => "Where",
        :string => "String",
        :what => "What",
        :why => "Why"
      ),
      Appointment.create!(
        :who => "Who",
        :where => "Where",
        :string => "String",
        :what => "What",
        :why => "Why"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Who".to_s, :count => 2
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "What".to_s, :count => 2
    assert_select "tr>td", :text => "Why".to_s, :count => 2
  end
end
