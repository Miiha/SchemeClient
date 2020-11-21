import Foundation
import SwiftShell
import XCallback

public struct SchemeClient {
  public var run: (String) -> Result<String, Error>

  public init(run: @escaping (String) -> Result<String, Error>) {
    self.run = run
  }

  public struct Error: Swift.Error, Equatable {
    public let underlying: Swift.Error

    public init(underlying: Swift.Error) {
      self.underlying = underlying
    }

    public static func == (lhs: SchemeClient.Error, rhs: SchemeClient.Error) -> Bool {
      lhs.underlying as NSError == rhs.underlying as NSError
    }
  }
}

extension SchemeClient {
  public static let live = SchemeClient(
    run: { path in
      let result = SwiftShell.run(XCallback.xCallbackPath, "-url", path)

      if result.succeeded {
        return .success(result.stdout)
      } else {
        let error = NSError(domain: "com.miiha.SchemeClient", code: result.exitcode)
        return .failure(Error(underlying: error))
      }
    }
  )
}
