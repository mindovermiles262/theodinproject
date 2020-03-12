require 'rails_helper'

RSpec.describe ButtonHelper do
  describe '#signup_button' do
    let(:signup_button) do
      '<a class="button button--primary" href="/sign_up">Sign Up</a>'
    end

    it 'returns a sign up button' do
      expect(helper.signup_button).to eq(signup_button)
    end
  end

  describe '#chat_button' do
    let(:chat_button) do
      '<a class="button button--secondary" target="_blank" rel="noreferrer" href="https://discord.gg/hvqVr6d">Open Discord</a>'
    end

    before do
      allow(helper).to receive(:chat_link).and_return('https://discord.gg/hvqVr6d')
    end

    it 'returns a chat button' do
      expect(helper.chat_button).to eql(chat_button)
    end
  end

  describe '#contribute_button' do
    let(:contribute_button) do
      '<a class="button button--primary" href="/contributing">Contribute</a>'
    end

    it 'returns a contribute button' do
      expect(helper.contribute_button).to eql(contribute_button)
    end
  end
end
