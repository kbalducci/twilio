require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :who => "MyString",
      :where => "MyString",
      :string => "MyString",
      :what => "MyString",
      :why => "MyString"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_who[name=?]", "appointment[who]"

      assert_select "input#appointment_where[name=?]", "appointment[where]"

      assert_select "input#appointment_string[name=?]", "appointment[string]"

      assert_select "input#appointment_what[name=?]", "appointment[what]"

      assert_select "input#appointment_why[name=?]", "appointment[why]"
    end
  end
end
