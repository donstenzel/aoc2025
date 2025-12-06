λ! ←^ $"⊃(_)" /◇⊂₃ @| ⍚⊂⊙@∘ ⍚▽⊙@⋅ -@a°□⊢

Mean   ← ÷⧻⟜/+
Median ← ÷₂/+⊏⊟⊃⌊⌈÷₂-₁⊸⧻⍆
StdDev ← √Meanⁿ₂-⊸Mean

Order ↚ ˜get map °⊟⍉[
  {3 @G}
  {2 @M}
  {1 @K}
  {0 ""}
  {¯1 @m}
  {¯2 @µ}
  {¯3 @n}
]

Time ← $"__s"⁅₃˜÷⟜⍜°ₑ₁₀₀₀(⊃⍜⌵↧₃Order⌊)

N! ←^ ⍚repr
S₀ ↚ $$ ╭───┬─_─╮
     $$ │ ◷ │ _ │
     $$ ╰───┼─_─╯
     $$     ├╴⍥ _
     $$     ├╴µ _
     $$     ├╴M _
     $$     ╰╴σ _

# Profile a function `^0` with input `^1`.
# The resulting function takes the number
# of repetitions to run.
Profile‼ ← (
  ⟜⍥(°□⊢{⊙◌⍜now^0 ^1})
  ⊙∩₃Time ⊙⊃(Mean|Median|StdDev)
  &p S₀ °⊟₃⍉≡$"─_─" ⊂₃ N!^0 @\s N!^1
)

S₁ ↚ $$ [#1 took _]
     $$ _
     $$ [#2 took _]
     $$ _

# Display both parts with elapsed time
Display‼ ← (
  &p S₁ ⍜⊙◌∩Time ⊃⍜now^0⍜now^1
)

# Get the input for a given Day and Year.
# Invalid dates will error as no input is
# available. Caches the input locally.
# input ? year day
Get ← (
  M ← comptime(map⍚°$"_=_" ▽≠@#⊜⊃⊢□⊸≠@\n &fras⍣&var".env" "UIUA_ENV_PATH")
  V ← get⊙M
  ⨬(∩(⍥&fmd¬⊸&fe)
    /$"_\r\n_" ⤚⋅⊓{
    | $"GET /_/day/_/input HTTP/1.1"
    | $"Host: adventofcode.com"
    | $"Connection: close"
    | $"Cookie: session=_" V "session"
    | $"User-Agent: _\r\n\r\n" V "contact"
    }
    ⍜⊙&tlsc(&rs∞⊸&w)⊙"adventofcode.com:443"
    ⤚˜&fwa ↘¯1▽⍜⇌\↧ ¬⊸⦷"\r\n\r\n" ⌝⊂"HTTP/1.1 200"
  )⋅⋅&fras◡⋅⋅&fe⊸₂⍜□₃⧅°◇°/$"_/_" V "cache"
)
