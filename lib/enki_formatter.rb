class EnkiFormatter
  class << self
    HTML = Redcarpet::Render::HTML.new(hard_wrap: true)
    RENDERER = Redcarpet::Markdown.new(HTML, no_intra_emphasis: true,
                                             tables: true,
                                             strikethrough: true,
                                             fenced_code_blocks: true)
    def format_as_xhtml(text)
      RENDERER.render(text)
    end
  end
end
