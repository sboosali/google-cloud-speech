{-|

@
stack build && stack exec -- it speech
@

it:

* collects raw audio data, by bytes (i.e. @Word8@), into a @TVar@ (via @portaudio@)
* encodes the @RAW@ (headerless) into @FLAC@ (writes them to disk, shells out to @flac@, then reads it back) TODO shell-pipe, No intermediary files
* base64-encodes the @FLAC@ with (via @base64-bytestring@)
* embeds the @Base64@ into a @JSON@
* sends the @JSON@ request to the Google Cloud Speech API (you an need to apply to the limited alpha release, register an account, to enable billing).

TODO continuous streaming API

TODO Fall back to free/public API

TODO Log audio data

TODO Keyboard shortcut to toggle, Like F1 for Siri

see
<https://cloud.google.com/speech/docs/best-practices>
for limitations:

* For streaming recognition, audio must be sent at a rate that approximates real time. Output is streamed back in real time.
* The maximum duration of audio streamed to the Cloud Speech API service is approximately one minute.
* No more than 20 recognition calls may be requested per 100 seconds (that is, on average, no more than one request every five seconds).
* No more than 10MB of audio can be requested to be processed per 100 seconds (which is two minutes of 16-bit, 48000 Hz uncompressed audio or six minutes of 16-bit, 16000 Hz uncompressed audio).
* If a SpeechContext is supplied, it is limited to a maximum of 50 phrases of up to 100 characters each.


LINEAR16, uncompressed 16-bit signed little-endian samples, is the simplest encoding format, and is useful for tests. However, because it is uncompressed, it is not recommended for deployed clients.

(WARNING CONFIDENTIAL) see <https://cloud.google.com/speech/reference/rpc/google.cloud.speech.v1> for API:



-}
module GoogleCloudSpeech
 ( module GoogleCloudSpeech
 , module GoogleCloudSpeech.Types
 , module GoogleCloudSpeech.Request
 , module GoogleCloudSpeech.Microphone
 ) where
import GoogleCloudSpeech.Extra
import GoogleCloudSpeech.Types
import GoogleCloudSpeech.Request    hiding (main)
import GoogleCloudSpeech.Microphone hiding (main)
