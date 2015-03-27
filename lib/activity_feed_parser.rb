require 'json'
require 'pry'

class ActivityFeedParser

  def initialize
    @feed_entries = JSON.parse(File.open('data/feed_entries.json').read)
    @objects = JSON.parse(File.open('data/objects.json').read)
  end

  def sentence_maker
    @feed_entries[0]['sentence']
  end

  def creators(name)
    creators =@feed_entries.map {|hash| hash['objects']['creator']['text']}
    string = ''
    creators.each do |creator_name|
      if creator_name == name
         string << creator_name
      end
    end
    string
  end

  # def creator_ids(name)
  #   ids = @feed_entries.map { |hash| hash['objects']['creator']['id']}
  # end

  def patients(name)
    patients =@feed_entries.map { |hash| hash['objects']['patient']['text']}
    string = ''
    patients.each do |patient_name|
      if patient_name == name
        string << patient_name
      end
    end
    string
  end

  def addresses(id)
    string = ''
    @feed_entries

  end
end


 # "#{creator} added #{address} to #{patient}"
# "[Joe Example](http://example.com/users/5) added [a home address](http://example.com/addresses/6) to [Sue Summers](http://example.com/users/5)"
