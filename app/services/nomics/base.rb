require 'net/http'
class Nomics::Base < ApplicationService
  API_URL = "https://api.nomics.com/v1"

  ALL_NET_HTTP_ERRORS = [Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError, Net::HTTPBadResponse,
                         Net::HTTPHeaderSyntaxError, Net::ProtocolError].freeze

  attr_reader :options

  def initialize(options = {})
    @options = options
  end

  private

  def api_request(api_uri, query_params)
    uri = URI(api_uri)
    query_params = {key: ENV['API_KEY']}.merge!(query_params)
    uri.query = URI.encode_www_form(query_params)

    puts uri.inspect
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri)

    http.request(request)

  rescue *ALL_NET_HTTP_ERRORS => e
    ExceptionNotifier.notify_exception(e)
  end

  def api_response(response)
    case response
    when Net::HTTPSuccess
      response.read_body
    else
      raise response.value
    end
  end

end
