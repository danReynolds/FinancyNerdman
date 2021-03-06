module WordpressApi
  class WordpressApi < ExternalApi
    @api = load_api('wordpress_api')

    class << self
      def get_categories(args = {})
        url = replace_url(@api[:categories], args)
        fetch_response(url)
      end

      def get_posts_by_category(args = {})
        url = replace_url(@api[:posts_by_category], args)
        fetch_response(url)
      end

      def get_product(args = {})
        url = replace_url(@api[:product], args)
        fetch_response(url)
      end

      def get_tool(args = {})
        url = replace_url(@api[:tool], args)
        fetch_response(url)
      end
    end
  end
end
