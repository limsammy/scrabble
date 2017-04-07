gem 'minitest'
require_relative '../lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test
  def test_for_letters_method_works
    finder = WordFinder.new

    assert finder.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).include?("ape")
    assert_equal 141, finder.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).count
  end
end
