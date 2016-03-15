require_relative 'lib/image_processor'

xml_file = ARGV[0]
# output_file = ARGV[1]

ImageProcessor.run(xml_file)
