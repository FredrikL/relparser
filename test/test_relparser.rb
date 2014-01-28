require 'test/unit'
require 'relparser'

class RelParserTests < Test::Unit::TestCase

  def test_parse_returns_release
		result = RelParser.parse "Homeland.S03E12.PROPER.720p.HDTV.x264-KILLERS"
		assert_equal("Homeland",result.name)
	end

end