require 'relparser/parser'

module RelParser
  def self.parse name
    Parser.new.parse name
  end
end