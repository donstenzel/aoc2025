#!/usr/bin/env -S uiua run
# Experimental!

P ← ⊓⍚(⊚=@#)⊓⍚(⍚(⊜⋕⊸≠@,)⊜°◇$"(_)"⊸≠@\s)⍚(⊜⋕⊸≠@,) ⊜°◇$"[_] _ {_}"⊸≠@\n

N ← ⍚⍜°▽◿₂ ⍚⍆ ⍚⌞⊂
M ← -₁⧻⊢pathN∪◇≍ □[]
F ← /+≡◇˜M

# Non functional; dies to huge state space.
N ← ▽⤚(/×≥⍉) ◴≡⌞+
M ← -₁⧻⊢pathN∪≍ ⊙⬚0≡◇°⊚◡⋅≡⋅0
G ← /+≡◇M

~ "lib" ~ Display! Get
Get 2025 10
Display!F ⊙⊙◌ P
