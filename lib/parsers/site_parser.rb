require 'parsers/base_parser'
class SiteParser < BaseParser
  def fetch(url)
    Feedjira::Feed.fetch_and_parse url
  end
end
