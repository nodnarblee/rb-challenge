# require 'pry'
require 'nokogiri'
require_relative '../../models/image'
require_relative '../../models/images_batch'

module ImageProcessor

  class ExifParser
    class << self

      def parse(file)
        xml = Nokogiri::XML(file_to_parse(file))
        images = Image.parse(xml.to_s)
        image_collection(images)
      end

      def image_collection(images)
        images_batch = ImagesBatch.new.collection
        images.each { |image| images_batch << image }
      end

      def file_to_parse(file)
        File.open(file)
      end

    end
  end

end
