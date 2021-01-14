<TeXmacs|1.99.13>

<style|generic>

<\body>
  <paragraph|Hailstorm Problem:>

  For a given, number, <math|x>, we iteratively apply a piece-wise function.
  For any <math|x> can we algorithmically determine if the sequence will
  converge at 1?

  Function: <math|x=x/2<space|1em>if<space|1em>x<around*|\||2<space|1em>else<space|1em>x\<times\>3+1|\<nobracket\>>>

  <paragraph|Rough Solution:>

  <\proposition>
    The sequence converges on all natural numbers.
  </proposition>

  Let's start 1 and attempt to produce a \Ptree sequence.\Q If this resulting
  sequence has full coverage over all natural numbers, they can all be
  directly generated and thereby retraced back to 1 in a finite number of
  steps. To the left is <math|n<rsub|i>=2n<rsub|i-1>>. To the right is
  <math|n<rsub|i>=<dfrac|n<rsub|i-1>-1|3>> if <math|n<rsub|i-1>> is divisible
  by 3.

  <\big-table|<tabular|<tformat|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|1>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|2>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|4>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|8>|<cell|>|<cell|1>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|16>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|32>|<cell|>|<cell|5>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>
    \;
  </big-table>

  Natural numbers by Hailstorm Generation

  <\big-table|<tabular|<tformat|<table|<row|<cell|>|<cell|Steps from
  1>|<cell|<math|2<rsup|n>> root>|<cell|Steps from
  <math|2<rsup|n>>>>|<row|<cell|1>|<cell|>|<cell|>|<cell|>>|<row|<cell|2>|<cell|L>|<cell|L>|<cell|>>|<row|<cell|3>|<cell|LLLLRLR>|<cell|LLLL>|<cell|RLR>>|<row|<cell|4>|<cell|LL>|<cell|LL>|<cell|>>|<row|<cell|5>|<cell|LLLLR>|<cell|LLLL>|<cell|R>>|<row|<cell|6>|<cell|LLLLRLRL>|<cell|LLLL>|<cell|RLRL>>|<row|<cell|7>|<cell|LLLLRLLLRLLRLRLR>|<cell|LLLL>|<cell|RLLLRLLRLRLR>>|<row|<cell|8>|<cell|LLL>|<cell|LLL>|<cell|>>|<row|<cell|9>|<cell|LLLLRLLLRLLRLRLRLLR>|<cell|LLLL>|<cell|RLLLRLLRLRLRLLR>>|<row|<cell|10>|<cell|LLLLRL>|<cell|LLLL>|<cell|RL>>|<row|<cell|11>|<cell|LLLLRLLLRLLRLR>|<cell|LLLL>|<cell|RLLLRLLRLR>>|<row|<cell|12>|<cell|LLLLRLRLL>|<cell|LLLL>|<cell|RLRLL>>|<row|<cell|13>|<cell|LLLLRLLLR>|<cell|LLLL>|<cell|RLLLR>>|<row|<cell|14>|<cell|LLLLRLLLRLLRLRLRL>|<cell|LLLL>|<cell|RLLLRLLRLRLRL>>|<row|<cell|15>|<cell|LLLLRLLLLLRLRLRLR>|<cell|LLLL>|<cell|RLLLLLRLRLRLR>>|<row|<cell|16>|<cell|LLLL>|<cell|LLLL>|<cell|>>>>>>
    \;
  </big-table>

  \;

  First obvious sub-sequence: follow numbers to the left by
  \ <math|n<rsub|i>=2n<rsub|i-1>> with <math|n<rsub|0>=1>. This means that
  all powers of 2 converge for the hailstorm process. Further, any number
  encountered in the tree may act as a root for the same geometric sequence
  (eg [3, 6, 12<text-dots>]).\ 

  \;
</body>

<\initial>
  <\collection>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-4|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Hailstorm Problem:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Rough Solution:
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>