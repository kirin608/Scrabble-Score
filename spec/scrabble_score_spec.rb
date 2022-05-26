require_relative '../scrabble_score'

RSpec.describe('#scrabble_score') do
    describe 'scrabble_score' do
        it ("returns a scrabble score for a letter") do
            expect(scrabble"a").to(eq(1))
        end
        it ("returns a scrabble score for a word") do
            expect(scrabble"telephone").to(eq(14))
        end
        it ("returns a scrabble score for a word") do
            expect(scrabble"elephant").to(eq(13))
        end
        it ("returns a scrabble score for a phrase") do
            expect(scrabble"I am doing my home work").to(eq(39))
        end
    end
end