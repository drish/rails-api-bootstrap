# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StubWorker do

  describe '#perform' do
    it 'should not raise' do
      described_class.perform_async(1)
      expect(StubWorker.jobs.size).to eq 1
    end
  end
end
