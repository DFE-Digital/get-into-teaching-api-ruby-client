class CacheInvalidator < Faraday::Middleware
  PATHS = %w[
    /api/teaching_events
  ].freeze
  METHODS = %i[post put]

  def initialize(app, store: nil, base_path: nil)
    super(app)

    @base_path = base_path
    @store = store
  end

  def on_request(env)
    path_invalidates_cache = PATHS.any? { |p| "#{@base_path}#{p}".start_with?(env.url.path) }
    method_invalidates_cache = METHODS.include?(env.method)
    
    @store&.clear if method_invalidates_cache && path_invalidates_cache
  end
end

Faraday::Request.register_middleware(invalidate_cache: CacheInvalidator)
