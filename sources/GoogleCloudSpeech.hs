{-|

@
stack build && stack exec -- it speech
@

it:

* collects raw audio data from @portaudio@
* base64-encodes with @base64@

-}
module GoogleCloudSpeech
 ( module GoogleCloudSpeech
 , module GoogleCloudSpeech.Types
 , module GoogleCloudSpeech.Request
 ) where
import GoogleCloudSpeech.Types
import GoogleCloudSpeech.Request
