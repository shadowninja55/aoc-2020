import strscans, strutils

proc solvePartOne(): int =
    var
        lower, upper: int
        letter, password: string

    for line in lines("input.txt"):
        if line.scanf("$i-$i $w: $w", lower, upper, letter, password):
            if password.count(letter) in lower..upper:
                inc result

proc solvePartTwo(): int =
    for line in lines("input.txt"):
        var
            first, second: int
            letter, password: string

        if line.scanf("$i-$i $w: $w", first, second, letter, password):
            if (password[first - 1] == letter[0]) xor (password[second - 1] ==
                    letter[0]):
                inc result

echo solvePartOne()
echo solvePartTwo()
