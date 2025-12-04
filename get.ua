M ↚ map⍚°$"_=_" ▽≠@#⊜⊃⊢□⊸≠@\n &fras".env"
V ↚ get⊙M

Get ← (
  ⨬(∩(⍥&fmd¬⊸&fe)
    /$"_\r\n_" ⤚⋅⊓{
    | $"GET /_/day/_/input HTTP/1.1"
    | $"Host: adventofcode.com"
    | $"Connection: close"
    | $"Cookie: session=_" V "session"
    | $"User-Agent: _\r\n\r\n" V "contact"
    }
    ⍜⊙&tlsc(&rs∞⊸&w)⊙"adventofcode.com:443"
    &fwa⤚: ↘¯1▽⍜⇌\↧ ¬⊸⦷"\r\n\r\n" ⌝⊂"HTTP/1.1 200"
  )⋅⋅&fras◡⋅⋅&fe⊸₂⍜□₃⧅°◇°/$"_/_" V "cache"
)
