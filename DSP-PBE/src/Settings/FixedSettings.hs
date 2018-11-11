module Settings.FixedSettings where

import Types.Thetas
import Data.Functor.Identity

debug = True

-----------------
--
-- SGD Settings
--
-----------------

-- | selects the thetas should we vary during GD
thetaSelectors :: [(Double -> Identity Double) -> Thetas -> Identity Thetas]
--thetaSelectors = [lpfThreshold, hpfThreshold,ringzFreq,ringzDecaySecs,ringzApp,lpfApp,hpfApp,whiteApp,ampApp,pitchShiftFreq,pitchShiftApp]
thetaSelectors = [hpfThreshold]

batchSize :: Int
batchSize = 4

learnRate :: Double
learnRate = 1

converganceGoal :: Double
converganceGoal = 0.01

--How often to we go back to the best Theta we found so far
--restartRound :: Int
--restartRound = 15


----------------
--
-- FFT settings
--
----------------

-- each bin is 1Hz and each frame is 1s
frameRes :: Int
frameRes = 4096

overlap :: Int
overlap = 2048

-- number of peaks to extract in spectral analysis/fingerprinting
numPeaks :: Int
numPeaks = 40 

-- what is the tolerance for considering two frequences to basically be the same
-- not in units of freq, but in how many peaks we allowed during constallation
binSize :: Int
binSize = 2

-- a higher value reduces the resolution of the fft
-- but can significantly improve running time
resolution :: Int
resolution = 0
