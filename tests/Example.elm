module Example exposing (..)

import Day01
import Day02
import Day03
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    todo day3Part2


day1Part1 : String
day1Part1 =
    String.join " " [ "Day01", "Part 1:", String.fromInt Day01.calMostCalories ]


day1Part2 : String
day1Part2 =
    String.join " " [ "Day01", "Part 2:", String.fromInt Day01.calcTop3Calories ]


day2Part1 : String
day2Part1 =
    String.join " " [ "Day02", "Part 1:", String.fromInt Day02.totalScorePart1 ]


day2Part2 : String
day2Part2 =
    String.join " " [ "Day02", "Part 2:", String.fromInt Day02.totalScorePart2 ]


day3Part1 : String
day3Part1 =
    String.join " " [ "Day03", "Part 1:", String.fromInt Day03.totalPriority ]


day3Part2 : String
day3Part2 =
    String.join " " [ "Day03", "Part 2:", String.fromInt Day03.groupPriority ]
