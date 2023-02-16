require 'digest/md5'

class Entity < ApplicationRecord
  belongs_to :sentence

  def text_to_css
    '#' << text_to_hex
  end

  def text_to_hex
    Digest::MD5.hexdigest(text)[0..5]
  end

  def color_inverse
    '#' << sprintf("%X", text_to_hex.hex ^ 0xFFFFFF)
  end
end
