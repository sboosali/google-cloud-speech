{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference
module GoogleCloudSpeech.Example where
import GoogleCloudSpeech
import qualified GoogleCloudSpeech.Request

{-|
@
stack build && stack exec -- example-google-cloud-speech
@
-}
main :: IO ()
main = do
 putStrLn "(GoogleCloudSpeech.Example...)"
 GoogleCloudSpeech.Request.main

