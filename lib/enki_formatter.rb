class EnkiFormatter
  class << self
    HTML = Redcarpet::Render::HTML.new(hard_wrap: true)
    RENDERER = Redcarpet::Markdown.new(HTML, no_intra_emphasis: true,
                                             tables: true,
                                             strikethrough: true)
    def format_as_xhtml(text)
      Lesstile.format_as_xhtml(
        text,
        :text_formatter => lambda {|text| RENDERER.render(text)},
        :code_formatter => Lesstile::CodeRayFormatter
      )
    end
  end
end
