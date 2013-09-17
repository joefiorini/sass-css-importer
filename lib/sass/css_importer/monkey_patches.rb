require 'sass'

class Sass::Engine
  alias initialize_without_css_importer initialize
  
  def initialize(template, options={})
    initialize_without_css_importer(template, options)

    css_importer = self.options[:load_paths].find {|lp| lp.is_a?(Sass::CssImporter::Importer) }

    unless css_importer
      css_importers =
        self.options[:load_paths].map do |importer|
          Sass::CssImporter::Importer.new(importer.root)
        end
      self.options[:load_paths].concat css_importers
    end
  end
end

