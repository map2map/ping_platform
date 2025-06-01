import times, httpclient

proc pingPlatform() =
  var client = newHttpClient()
  try:
    let response = client.get("https://platform-krns.onrender.com/")
    echo "Successfully pinged platform at ", $now(), ". Status code: ", $response.status
  except e:
    echo "Error pinging platform at ", $now(), ": ", e.msg

when isMainModule:
  pingPlatform()
