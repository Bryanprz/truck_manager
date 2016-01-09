# Helpers to generate HTML
# You can call these helpers from HTML files without a block also

# e.g. <%= main_layout %>

module TagHelper
  def main_layout(options = {})
    render layout: "styleguide/layouts/main", locals: options do
      yield if block_given?
    end
  end
end
