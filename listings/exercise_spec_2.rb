require './exercise'

describe '#fibonacci' do
  it 'works recursively' do
    n = 4
    expect(self).to receive(:fibonacci).and_call_original
      .at_least(n).times
    fibonacci(n)
  end
end
