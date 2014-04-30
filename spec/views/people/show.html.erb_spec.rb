require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
  end

  it 'has a link to add a new phone number' do
  expect(page).to have_link('Add phone number', href: new_phone_number_path(person_id: person.id))
end

it 'adds a new phone number' do
  pending
  page.click_link('Add phone number')
  page.fill_in('Number', with: '555-8888')
  page.click_button('Create Phone number')
  expect(current_path).to eq(person_path(person))
  expect(page).to have_content('555-8888')
end
end
