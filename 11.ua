#!/usr/bin/env -S uiua run
~ "lib" ~ Display! Get

N ← map⊙⍚(⊜□⊸≠@\s) ⊜°◇$"_: _"⊸≠@\n Get 2025 11

Q ← |2 ⨬memo⍣(/+ ≡⌟Q °□get⊙N)0 1◡≍

F ← (/× ⧈Q {"you" "out"})
G ← (/× ⧈Q {"svr" "fft" "dac" "out"})

Display!(F|G)
