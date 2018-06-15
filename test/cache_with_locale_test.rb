require 'test_helper'

class CacheWithLocale::Test < ActiveSupport::TestCase
  include CacheWithLocale::Helpers

  test "truth" do
    assert_kind_of Module, CacheWithLocale
  end

  test "helper" do
    assert_equal send(:compose_key, 'x'), ['x', 'uk']
  end
end
