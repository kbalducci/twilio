require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :who => "Who",
      :where => "Where",
      :string => "String",
      :what => "What",
      :why => "Why"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Who/)
    expect(rendered).to match(/Where/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/What/)
    expect(rendered).to match(/Why/)
  end
end
