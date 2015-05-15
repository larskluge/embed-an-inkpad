module EmbedAnInkpad
  module ViewHelpers
    def embed_an_inkpad inkpad_id


      uri = URI("https://www.inkpad.io/#{inkpad_id}.md")

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        request = Net::HTTP::Get.new uri

        response = http.request request # Net::HTTPResponse object

        content_tag :pre do
          response.body
        end
      end
    end
  end
end

