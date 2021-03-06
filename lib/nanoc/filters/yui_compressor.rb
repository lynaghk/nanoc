require 'yuicompressor'

module Nanoc::Filters
  class YUICompressor < Nanoc::Filter

    # Compress Javascript or CSS using [YUICompressor](http://rubydoc.info/gems/yuicompressor).
    # This method optionally takes options to pass directly to the
    # YUICompressor gem.
    #
    # @params [String] content JavaScript or CSS input
    #
    # @params [Hash] params Options passed to YUICompressor
    #
    # @return [String] Compressed but equivalent JavaScript or CSS
    def run(content, params = {})
      ::YUICompressor.compress(content, params)
    end
  end
end
