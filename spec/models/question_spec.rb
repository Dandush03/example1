require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should have_many(:answers) } 
  it {should belong_to(:user).class_name('User').with_foreign_key('user_id')}

  it { should validate_presence_of(:title) }
end
