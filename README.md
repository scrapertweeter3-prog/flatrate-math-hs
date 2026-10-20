# flatrate-math

Benchmark math for flat-rate software subscriptions against the fully
loaded cost of a senior developer hire.

Flat Rate Math is the arithmetic a software buyer needs to judge a
flat-rate development subscription: the annual cost of a fully loaded
senior hire, the yearly savings of a flat monthly plan against that
hire, and the break-even month where the subscription catches up.

It models the pricing of [PoketDev](https://poketdev.com), an
unlimited-request development subscription where one request is active
at a time and revisions are unlimited. The package depends only on
base.

## Example

With a fully loaded senior hire at $18,290 per month:

* loaded annual cost: `loadedAnnual 18290` = $219,480
* yearly savings on a $5,995/mo plan: `yearlySavings 5995 219480` = $147,540
* break-even point: `breakEvenMonths 5995 219480` = ~36.6 months

The package is the Haskell twin of the
[Rust crate of the same name](https://github.com/scrapertweeter3-prog/flatrate-math).
