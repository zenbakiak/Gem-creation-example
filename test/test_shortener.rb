require 'test_helper'

class TestShortener < Minitest::Test

  def setup
    @short_url = Foo::Shortener.new("http://fundwise.co").short
  end

  def shortener_works
    assert_equal true, @short_url.is_a?(Hash), "It doesn't work!"
    assert_equal true, @short_url.keys == [:id, :longUrl, :kind], "Missing short link!"
  end

end