require "yaml"

class InvalidateCache < Faraday::Middleware
  CACHE_INVALIDATION_PATHS = [
    /api\/teaching_events/
  ].freeze

  def initialize(app, store: nil)
    super(app)

    @store = store
  end

  def call(env)
    path_invalidates_cache = CACHE_INVALIDATION_PATHS.any? { |p| p.match?(env.url.path) }
    method_invalidates_cache = %i[post put].include?(env.method)
    if method_invalidates_cache && path_invalidates_cache
      @store.clear if @store
    end
    @app.call(env)
  end
end