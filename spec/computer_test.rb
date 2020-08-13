require 'minitest/autorun'
require_relative '../lib/computer'

class ComputerTest < MiniTest::Test
  def test_empty_inputs
    code =  ''
    guess = ''

    expected = [0, 0]
    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_empty_code
    code =  ''
    guess = '4135'

    expected = [0, 0]
    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_empty_guess
    code =  '6422'
    guess = ''

    expected = [0, 0]
    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_no_matches1
    code =  '4455'
    guess = '1122'
    expected = [0, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_no_matches2
    code =  '3333'
    guess = '6666'
    expected = [0, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_mixed_matches1
    code =  '2146'
    guess = '2431'
    expected = [1, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_mixed_matches2
    code =  '5644'
    guess = '4645'
    expected = [2, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_mixed_matches3
    code =  '5644'
    guess = '4454'
    expected = [1, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_mixed_matches4
    code =  '2123'
    guess = '2132'
    expected = [2, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_mixed_matches5
    code =  '2123'
    guess = '2314'
    expected = [1, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_all_partial1
    code =  '2211'
    guess = '1122'
    expected = [0, 4]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_all_partial2
    code =  '1431'
    guess = '3114'
    expected = [0, 4]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_some_partial1
    code =  '2211'
    guess = '1133'
    expected = [0, 2]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_some_exact1
    code =  '2323'
    guess = '2222'
    expected = [2, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_some_exact2
    code =  '5644'
    guess = '1244'
    expected = [2, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_some_exact3
    code =  '2122'
    guess = '2123'
    expected = [3, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_all_exact1
    code =  '5346'
    guess = '5346'
    expected = [4, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end

  def test_all_exact2
    code =  '4444'
    guess = '4444'
    expected = [4, 0]

    assert_equal expected, Computer.new.compare_code(guess, code)
  end
end
