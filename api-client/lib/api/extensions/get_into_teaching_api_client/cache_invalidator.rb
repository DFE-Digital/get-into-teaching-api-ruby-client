class CacheInvalidator < Faraday::Middleware
  CACHE_INVALIDATION_PATHS = [
    %r{api/teaching_events}
  ].freeze

  def initialize(app, store: nil)
    super(app)

    @store = store
  end

  def on_request(env)
    path_invalidates_cache = CACHE_INVALIDATION_PATHS.any? { |p| p.match?(env.url.path) }
    method_invalidates_cache = %i[post put].include?(env.method)

    @store&.clear if method_invalidates_cache && path_invalidates_cache
  end
end

Faraday::Request.register_middleware invalidate_cache: -> { CacheInvalidator }
