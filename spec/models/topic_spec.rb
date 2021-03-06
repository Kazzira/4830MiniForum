require 'spec_helper'

describe Topic do
  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(1) }
end