require 'spec_helper'
require_relative '../scripts/basic'

describe 'Basics:' do
  it 'Define constants and globals' do
    expect(defined?(CONSTANT)).to be_truthy
    expect(defined?(CONSTANT2)).to be_truthy

    expect(defined?($my_string)).to be_truthy
    expect($my_string.is_a?(String)).to be_truthy

    expect(defined?($my_symbol)).to be_truthy
    expect($my_symbol.is_a?(Symbol)).to be_truthy

    expect(defined?($my_array)).to be_truthy
    expect($my_array.is_a?(Array)).to be_truthy

    expect(defined?($my_float)).to be_truthy
    expect($my_float.is_a?(Float)).to be_truthy

    expect(defined?($my_nil)).to be_truthy
    expect($my_nil).to be_nil

    expect(defined?($my_boolean)).to be_truthy
    expect($my_boolean == true || $my_boolean == false)
      .to be_truthy
  end

  it 'say Hello!' do
    expect(hello()).to eq("Hello, Ruby World!")
  end

  # Define a method called 'nothing' which takes 3 parameters with
  # default values (we don't care about the value of the defaults)
  # The method does nothing and return nil
  it 'supports default parameters value' do
    expect(nothing()).to be_nil
    expect(nothing(1)).to be_nil
    expect(nothing(1, 2)).to be_nil
    expect(nothing(1, 2, 3)).to be_nil
    expect { nothing(1, 2, 3, 4) }
      .to raise_error(ArgumentError)
  end

  # array_42 takes an array as parameter and returns:
  # - true if there's a 42 in the array items
  # - false otherwise
  # Hint: Should be 2 lines (and can be one :)
  # Hint: google ruby array each
  it 'finds 42' do
    expect(array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])).to be_falsey
    expect(array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])).to be_truthy
  end

  it 'computes Fibonacci sequence' do
    expect(fibonacci(1)).to eq(1)
    expect(fibonacci(2)).to eq(1)
    expect(fibonacci(3)).to eq(fibonacci(1) + fibonacci(2))
    expect(fibonacci(4)).to eq(fibonacci(2) + fibonacci(3))
    expect(fibonacci(12)).to eq(144)
    expect(fibonacci(18)).to eq(2584)
    expect(fibonacci(23)).to eq(28657)
  end

  # Hint: 'def who_is_bigger(a, b, c)'
  # bonus : it must work for any number of argument ;)
  it 'tells me the biggest' do
    expect(who_is_bigger(84, 42, nil)).to eq("nil detected")
    expect(who_is_bigger(nil, 42, 21)).to eq("nil detected")
    expect(who_is_bigger(84, 42, 21)).to eq("84 is bigger")
    expect(who_is_bigger(42, 84, 21)).to eq("84 is bigger")
    expect(who_is_bigger(42, 21, 84)).to eq("84 is bigger")
  end

  # Reverse, upcase then removes all L, T and A.
  # Hint: google ruby string
  it 'does crazy stuff on strings' do
    expect(reverse_upcase_noLTA("Tries this at Home, Kids"))
      .to eq("SDIK ,EMOH  SIH SEIR")
    expect(reverse_upcase_noLTA("Ponies loves carrots"))
      .to eq("SORRC SEVO SEINOP")
    expect(reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn"))
      .to eq("NBVCXZ;KJHGFDSPOIUYREWQ")
  end



  # The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - reversed
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # Hint: You can do this in one line than less than 55 chars
  it 'does crazy stuff on Arrays' do
    expect(magic_array([1, 2, 3, 4, 5, 6]))
      .to eq([2, 4, 8, 10])
    expect(magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]]))
      .to eq([2, 4, 8, 10, 46, 62])
    expect(magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8]))
      .to eq([2, 4, 14, 16, 64])
  end
end