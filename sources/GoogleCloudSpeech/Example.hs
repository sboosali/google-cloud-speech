{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference

module GoogleCloudSpeech.Example where
import GoogleCloudSpeech
import qualified GoogleCloudSpeech.Request
import qualified GoogleCloudSpeech.Microphone

import System.Environment (getArgs)

{-|
@
stack build && stack exec -- example-google-cloud-speech
@
-}
main :: IO ()
main = do
 putStrLn "(GoogleCloudSpeech.Example...)"

 getArgs >>= \case
  ["transcribe"] -> GoogleCloudSpeech.Request.main
  ["listen"]     -> GoogleCloudSpeech.Microphone.main
  _              -> GoogleCloudSpeech.Microphone.main

