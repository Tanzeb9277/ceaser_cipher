require 'spec_helper'
require_relative '../lib/ceaser_cipher'


RSpec.describe 'Ceaser Cipher Project' do
  describe 'encrypt' do
    it 'can encrypt using a small shift' do
      expected_output = 'Khoor Zruog!'
      expect(ceaser_cipher("Hello World!", 3)).to eq(expected_output)
    end

    # remove the 'x' from the line below to unskip the test
    it 'can encrypt using large shift' do
      expected_output = 'Ebiil Tloiz!'
      expect(ceaser_cipher("Hello World!", 22)).to eq(expected_output)
    end

  end
end
