require_relative 'release'

module RelParser
  class Parser
    def parse name
      return parse_fov(name) if name.end_with?("-FoV")

      parse_regular name
    end

    private

    def parse_regular name
      parts = name.match(/^(.*)\.S(\d*)E(\d*).*$/).captures
      rel = TvRelease.new
      rel.name = parts.first.gsub("."," ")
      rel.season = parts[1]
      rel.episode = parts[2]
      rel
    end

    def parse_fov name
      parts = name.match(/^(.*)\.(\d*)x(\d*).*$/).captures

      rel = TvRelease.new
      rel.name = parts.first.gsub("_"," ")
      rel.season = parts[1]
      rel.episode = parts[2]
      rel

    end
  end
end