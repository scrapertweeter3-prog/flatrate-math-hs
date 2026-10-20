-- | Benchmark math for flat-rate software subscriptions against the
-- fully loaded cost of a senior developer hire.
module FlatRate.Math
  ( loadedAnnual
  , yearlySavings
  , breakEvenMonths
  ) where

-- | Annual cost of a senior developer hire from the fully loaded monthly
-- figure (salary plus benefits, payroll taxes, bonus, retirement).
loadedAnnual :: Double -> Double
loadedAnnual monthlyLoaded = monthlyLoaded * 12

-- | Yearly savings of a flat monthly subscription against the loaded hire.
yearlySavings :: Double -> Double -> Double
yearlySavings flatMonthly loadedAnnualCost = loadedAnnualCost - flatMonthly * 12

-- | Break-even months where the subscription catches up to the hire.
-- 'Nothing' when the monthly price is zero or negative.
breakEvenMonths :: Double -> Double -> Maybe Double
breakEvenMonths flatMonthly loadedAnnualCost
  | flatMonthly <= 0 = Nothing
  | otherwise        = Just (loadedAnnualCost / flatMonthly)
