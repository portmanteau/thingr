require 'spec_helper'

describe Item do
  it 'belongs to a user' do
    user = create(:user)
    expect(user).to be_a_new_record
  end
end

