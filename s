
[1mFrom:[0m C:/Users/Dylan/Documents/progprac/odin/projects/ruby/oop/mastermind/computer.rb:29 Computer#compare_code_partial:

    [1;34m26[0m: [32mdef[0m [1;34mcompare_code_partial[0m(guess, code, result)
    [1;34m27[0m:   guess.each [32mdo[0m |e|
    [1;34m28[0m:     i = code.index(e)
 => [1;34m29[0m:     binding.pry
    [1;34m30[0m:     [32mif[0m i != [1;36mnil[0m
    [1;34m31[0m:       code[i] = [31m[1;31m'[0m[31mO[1;31m'[0m[31m[0m
    [1;34m32[0m:       e = [31m[1;31m'[0m[31mO[1;31m'[0m[31m[0m
    [1;34m33[0m:       result << [31m[1;31m'[0m[31mO[1;31m'[0m[31m[0m
    [1;34m34[0m:     [32mend[0m
    [1;34m35[0m:   [32mend[0m
    [1;34m36[0m:   result
    [1;34m37[0m: [32mend[0m

