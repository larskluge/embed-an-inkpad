module EmbedAnInkpad
  module ViewHelpers

    def embed_an_inkpad inkpad_id
      uri = URI("https://www.inkpad.io/#{inkpad_id}")

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        request = Net::HTTP::Get.new uri
        request['Accept'] = 'text/html;vanilla'

        response = http.request request
        response.body.html_safe
      end
    end

  end
end

