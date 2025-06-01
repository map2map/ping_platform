import times, httpclient

proc pingPlatform() =
  var client = newHttpClient()
  try:
    let response = client.get("https://platform-krns.onrender.com/")
    echo "Successfully pinged platform at ", $now(), ". Status code: ", $response.status
  except HttpRequestError as e:
    echo "Error pinging platform at ", $now(), ": ", e.msg
  except OSError as e:
    # This will catch any lower-level I/O or socket errors
    echo "I/O error pinging platform at ", $now(), ": ", e.msg

when isMainModule:
  pingPlatform()
