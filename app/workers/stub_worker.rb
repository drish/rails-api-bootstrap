class StubWorker
  include Sidekiq::Worker
  sidekiq_options queue: "default"

  def perform(time)
    Rails.logger.info("Doing some work...")
    sleep(time)
  end
end