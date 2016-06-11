module GoogleCloudSpeech.Types where
import GoogleCloudSpeech.Extra()

import Data.Text (Text)

import Data.Int (Int8)
import Data.Sequence (Seq)

-------------------------------------------------------------------------------------

type APIKey = String

data GoogleSpeechRequest = GoogleSpeechRequest
 { gAudio :: Text -- ByteString
 }

-------------------------------------------------------------------------------------

-- | bits-per-sample
type BPS = Int8 -- Int16 -- Word8

type PCM = Seq BPS

-------------------------------------------------------------------------------------
