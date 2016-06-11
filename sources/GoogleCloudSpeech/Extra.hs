module GoogleCloudSpeech.Extra
 ( module GoogleCloudSpeech.Extra
 , module X
 ) where

import Control.DeepSeq as X (NFData)
import Data.Hashable as X (Hashable)
import Data.Semigroup as X (Semigroup)
import Data.String.Conv as X

import GHC.Generics as X (Generic)
import Data.Data as X (Data)
import Data.Monoid as X ((<>))

import Control.Arrow as X ((>>>))
import Data.Function as X ((&))
import Data.Foldable as X (traverse_)

--------------------------------------------------------------------------------
-- non-re-exported
import Language.Haskell.TH.Quote (QuasiQuoter)
import Data.Aeson.QQ

--------------------------------------------------------------------------------

(-:) :: forall a b. a -> b -> (a, b)
(-:) = (,)

nothing :: (Monad m) => m ()
nothing = return ()

maybe2bool :: Maybe a -> Bool
maybe2bool = maybe False (const True)

either2maybe :: Either e a -> Maybe a
either2maybe = either (const Nothing) Just

either2bool :: Either e a -> Bool
either2bool = either (const False) (const True)

{-| JSON literals.

Naming: like Python dictionaries, though supports lists too; avoids naming conflict with @aeson@/@attoparsec@.

@
dict = 'aesonQQ'
@

-}
dict :: QuasiQuoter
dict = aesonQQ

--------------------------------------------------------------------------------
