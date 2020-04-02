# x16-examples
Example programs for the Commander X16.

## 8QUEENS
This program solves the 8-queens puzzle. The goal is to place 8 queens on a
chess board, so that no two queens attack each other.

For n=8 there are 92 solutions, which are found in approx 3 minutes.

I've added a simple graphical display that shows the solution in progress.

## ANNEAL
This is an attempt at simulating annealing/aggregation of small particles,
which after a (long) time generates fractal-like images resembling snow flakes.

## FEIGEN
This displays a birfurcation diagram of the
[logistic map](https://en.wikipedia.org/wiki/Logistic_map).

## PUZZLE
This program solves a simple puzzle.  The goal is to place a number of pairs in
a line, such that the number of places between the two numbers in a pair is
equal to the number.  One of the two solutions for n=4 is:

```
2 3 4 2 1 3 1 4.
```

For n=7 there are 52 solutions, which are found in approx 2 minutes.

## SUDOKU
A simple brute-force sudoku solver. It shows the current progress.

## TENNIS
A variant of the pong game. The game gets gradually more and more difficult, by
having the ball increase in speed as well as letting the opponent move faster.
My high score so far is 1950 points :-)
