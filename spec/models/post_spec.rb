require 'spec_helper'

describe Post do
  it { should validate_presence_of(:body) }
  it { should ensure_length_of(:body).is_at_least(1) }
end