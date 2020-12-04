# SchemeClient

A small wrapper package around [xcall](https://github.com/martinfinke/xcall).
SchemeClient uses [SwiftShell](https://github.com/kareman/SwiftShell) to call xcall.

# Usage
```swift
let client = SchemeClient.live
let result = client.run("foo://bar")
let stdout = try result.get()
```


