#!/usr/bin/env -S uiua run
# this is a really interesting approach:
# we can create an adjacency matrix from the input
# and then simply take higher and higher powers
# of this matrix until we reach a fixpoint of all zeroes.
# this is because the graph contains no cycles.
# Mⁿ[i, j] is the number of paths of length n from i to j.
# therefore we can sum the powers and pick out the paths
# we're interested in: `svr ... fft`, `fft ... dac` and `dac ... out` for part 2,
# `you ... out` for part 1. Multiplying these together yields the total
# number of paths. the paths for part 2 can only all be `svr ... fft ... dac ... out`
# or `svr ... dac ... fft ... out`, since otherwise there would be cycles in the
# graph. in my other solution i learned that in my case `fft ... dac` was the
# kind of paths that are possible. i don't know if this is the case for every
# input, but you could easily modify the code to remedy that.

# nothing super interesting here; just build up all adjacencies
P ← /◇⊂⍚(⍉⊟□) ⊙⍚(⊜□⊸≠@\s) ⊜°◇$"_: _"⊸≠@\n

# count ? paths adjacencies
Σ ← (
  # first, we classify all nodes together s.t. `°⊚` can now produce
  # the adjacency matrix. each name gets swapped with its
  # corresponding unique index. we also grab the indices for the
  # paths of interest for later.
  °⊚ ˜⍜⊂⍜♭⊛

  # this is the cool part:
  # we take a copy of the matrix and then repeatedly apply
  # matrix multiplication with this original copy. this is the
  # same as increasing the exponent of the matrix. note that
  # we also keep each iteration to sum them up at the end.
  # iteration ends when the matrix zeroes out.
  # then we pick the paths we care about from the sum of powers
  # and finally take the product.
  /× ˜⊡ /+ ⍥⤚⊸⍜⍉⊞(/+×) ∞ ⟜∘
)

F ← Σ {"you" "out"}
G ← Σ ⧈⊟ {"svr" "fft" "dac" "out"}

~ "lib" ~ Display! Get
Display!(F|G) P Get 2025 11
