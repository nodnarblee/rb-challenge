require 'happymapper'
# require 'pry'
class Image

  include HappyMapper

  attr_accessor :make, :model, :image_url

  def initialize(make=nil, model=nil, image_url=nil)
    @make = make
    @model = model
    @image_url = image_url
  end

  tag :work
  element :make, String, :tag => 'exif/make'
  element :model, String, :tag => 'exif/model'
  element :image_url, String, :tag => 'urls/url'

  def unknown_if_empty
    [self.make, self.model].map { |attr| attr.nil? ? attr = "unknown" : attr }
  end

  def error_on_missing_url
    if self.image_url.nil?
      raise ArgumentError, "Image URL attribute is missing."
    end
  end

end
