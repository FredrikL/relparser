require_relative 'release'

module RelParser
  class Parser
    def parse name
      return parse_fov(name) if name.end_with?("-FoV")

      parse_regular name
    end

    private

    def parse_regular name
      parts = name.match(/^(.*)\.S(\d*)E(\d*).*-(.*)$/).captures
      parts.first.gsub!(".", " ")

      to_rel parts, name
    end

    def parse_fov name
      parts = name.match(/^(.*)\.(\d*)x(\d*).*-(.*)$/).captures
      parts.first.gsub!("_"," ")

      to_rel parts, name
    end

    def to_rel parts, name
      rel = TvRelease.new
      rel.name = parts[0]
      rel.season = parts[1].to_i
      rel.episode = parts[2].to_i
      rel.by = parts.last
      rel.full_name = name
      rel
    end
  end
end