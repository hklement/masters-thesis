require './exercise'

describe '#fibonacci' do
  it 'is defined' do
    expect { method(:fibonacci) }.not_to raise_error
  end

  it 'has the correct arity' do
    expect(method(:fibonacci).arity).to eq(1)
  end
end
