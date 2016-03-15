require_relative 'image_processor/exif_parser/exif_parser'
require 'pry'

module ImageProcessor

  def self.run(xml_file)

    dub = ExifParser.parse(xml_file)
    binding.pry
  #   parsed_images = Parser
          # Can use a gem like XML-mapper to create an Image object that contains: make, model, image
  #   html_pages = HtmlGenerator
          # This will require a little more research...
  end


end
