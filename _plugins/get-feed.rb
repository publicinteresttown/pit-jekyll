require 'rss' # Add to your Gemfile: gem "rss"
require 'net/http'

module Jekyll
  class GetFeed < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      site.data['feeds'] = Hash.new
      feeds = Jekyll.configuration({})['feeddata']
      feeds.each do |feed|
        site.data['feeds'][ feed['name'] ] = getfeed(feed['url'])
      end
    end

    def getfeed(url)
      results = Array.new

      rss = Net::HTTP.get(URI(url))
      feed = RSS::Parser.parse(rss)

      feed.items.each do |item|
        result = Hash.new
        result['title'] = item.title
        result['date'] = item.pubDate.to_date
        result['description'] = item.description
        result['link'] = item.link
        # You may need to add additional properties you want to capture here!

        results.push(result)
      end

      return results
    end

  end
end