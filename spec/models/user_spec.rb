require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:questions) } 
  it { should have_many(:answers) } 

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
