module RelParser
  class Release
    attr_accessor :name
    attr_accessor :full_name
    attr_accessor :by
  end

  class TvRelease < Release
    attr_accessor :season
    attr_accessor :episode
    attr_accessor :format
    attr_accessor :source
  end
end