require 'spec_helper'

describe PhoneNumber do
  let(:phone_number) { PhoneNumber.new(number: "1112223333") }
  it 'is valid' do
  expect(phone_number).to be_valid
end
end
