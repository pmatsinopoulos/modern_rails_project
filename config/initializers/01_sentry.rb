# frozen_string_literal: true

sentry_dsn = ENV.fetch('SENTRY_DSN', nil)
return unless sentry_dsn

Sentry.init do |config|
  config.dsn = sentry_dsn
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |_context|
    true
  end
  config.environment = Rails.env
end
