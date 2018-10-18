# frozen_string_literal: true

require "test_helper"

class AffixTest < ActiveSupport::TestCase
  test "find all" do
    assert_equal(16, Affix.count)
  end

  test "find affix 8" do
    affix_8 = Affix.find(8)

    assert_equal 8, affix_8.id
    assert_equal "Sanguine", affix_8.name
    assert_equal "When slain, non-boss enemies leave behind a lingering pool of ichor that heals their allies and damages players.", affix_8.description
  end

  test "find affix 10" do
    affix_8 = Affix.find(10)

    assert_equal 10, affix_8.id
    assert_equal "Fortified", affix_8.name
    assert_equal "Non-boss enemies have 20% more health and inflict up to 30% increased damage.", affix_8.description
  end
end
