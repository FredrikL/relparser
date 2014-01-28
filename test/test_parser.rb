require 'test/unit'
require 'relparser/parser'

class ParserTests < Test::Unit::TestCase

	def setup
		@p = RelParser::Parser.new
	end

	def test_relase_should_have_name_test
		result = @p.parse "Almost.Human.S01E06.720p.HDTV.X264-DIMENSION"
		assert_equal("Almost Human", result.name)
	end

	def test_short_name
		result = @p.parse "QI.S11E13.720p.HDTV.x264-C4TV"
		assert_equal("QI", result.name)
	end

	def test_odd_naming
		result = @p.parse "The_Musketeers.1x02.Sleight_Of_Hand.720p_HDTV_x264-FoV"
		assert_equal("The Musketeers", result.name)
	end
end