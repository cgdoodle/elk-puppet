require 'spec_helper'
describe 'doodle' do

  context 'with defaults for all parameters' do
    it { should contain_class('doodle') }
  end
end
