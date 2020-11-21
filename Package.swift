// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SchemeClient",
  products: [
    .library(name: "SchemeClient", targets: ["SchemeClient", "XCallback"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kareman/SwiftShell", .upToNextMinor(from: "5.1.0"))
  ],
  targets: [
    .target(
      name: "SchemeClient",
      dependencies: ["SwiftShell", "XCallback"]
    ),
    .binaryTarget(
      name: "XCallback",
      path: "XCallback.xcframework"
    ),
    .testTarget(
      name: "SchemeClientTests",
      dependencies: ["SchemeClient"]
    ),
  ]
)
