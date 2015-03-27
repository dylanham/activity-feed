require 'activity_feed_parser'
require 'spec_helper'

describe ActivityFeedParser do

  describe '#sentence_maker' do
    it 'should return some shit' do
      activity_feed_parser = ActivityFeedParser.new
      expect(activity_feed_parser.sentence_maker).to eq "{creator} added {address} to {patient}"
    end
  end

  describe '#creators' do
    it 'should return a list of creators' do
      activity_feed_parser = ActivityFeedParser.new
      expect(activity_feed_parser.creators('Jefferey Dibbert')).to eq 'Jefferey Dibbert'
    end
  end


  describe '#patients' do
    it 'should return a list of patients' do
      activity_feed_parser = ActivityFeedParser.new
      expect(activity_feed_parser.patients('Emilie Lind')).to eq 'Emilie Lind'
    end
  end

  describe '#addresses' do
    it 'should return a list of addresses' do
      activity_feed_parser = ActivityFeedParser.new
      expect(activity_feed_parser.addresses('17174')).to eq 'a business address'
    end
  end

  # describe '#creator_ids' do
  #   it 'should return a list of creator_ids' do
  #     activity_feed_parser = ActivityFeedParser.new
  #     expect(activity_feed_parser.creator_ids).to eq 'shit'
  #   end
  # end
end
