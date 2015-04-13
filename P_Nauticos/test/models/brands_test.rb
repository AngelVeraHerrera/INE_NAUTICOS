require 'test_helper'

class BrandsTest < ActiveSupport::TestCase
  test "test_name" do
    brand = Brand.create(:name => 'Nauticos', :cif => '1012', :logo_url => '')
    assert_equal 'Nauticos', brand.name
    assert_equal 1012, brand.cif
    assert_equal '', brand.logo_url
  end
end
