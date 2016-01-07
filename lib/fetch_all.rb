require "#{Rails.root}/app/models/site_data.rb"
class FetchAll
  def initialize
  end

  def start
    Site.all.to_a.each do |site|
      parser = SiteParser.new
      site_data = parser.fetch(site.url)
      site_data.entries.each do |entry|
        existing_site_data = SiteData.where(unique_id: entry.entry_id).first
        unless existing_site_data
          link = entry.entry_id unless entry.try(:url) && entry.try(:links)
          link = entry.links.first if entry.try(:links).present?
          link = entry.url if entry.try(:url).present?
          SiteData.create(
            title: entry.title,
            url: link,
            content: entry.try(site.content_tag.to_sym),
            author: entry.author,
            published: entry.published,
            unique_id: entry.entry_id
          )
        end
      end
    end
  end
end
