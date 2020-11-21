//
//  XCall.swift
//  XCallback
//
//  Created by Michael Kao on 21.11.20.
//

import Foundation

private class Token {}

public let xCallbackPath: String = {
  let bundle = Bundle(for: Token.self)
  return bundle.bundlePath.appending("/Resources/xcall.app/Contents/MacOS/xcall")
}()
