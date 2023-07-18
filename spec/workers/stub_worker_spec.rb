# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StubWorker do

  describe '#perform' do
    it 'should not raise' do
      expect { described_class.new.perform(1) }.not_to raise_error
    end
  end
end
