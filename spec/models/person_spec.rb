require 'spec_helper'

describe Person do
  it 'is invalid without a last name' do
  person = Person.new(first_name: 'Bob', last_name: nil)
  expect(person).not_to be_valid
 end
end

