require "minitest/autorun"
require_relative '../depaginator.rb'

class TestDepaginator < Minitest::Test
  describe "single page" do
    def test_response_returns_the_body
      first_page = Struct.new(:body).new("body")
      response = Github::Depaginator.new(first_page, all_pages: false).response

      assert_equal "body", response
    end
  end

  describe "all pages" do
    def test_response_returns_the_body
      # headers = {}
      # first_page = Struct.new(:body, :headers).new("body", headers)
      # response = Github::Depaginator.new(first_page, all_pages: true).response

      # assert_equal "body", response
      skip "later"
    end
  end

  describe "links" do
  end

  describe "page_count" do
  end
end
