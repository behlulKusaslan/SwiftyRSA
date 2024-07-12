// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftyRSA",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "SwiftyRSA",
      targets: ["SwiftyRSA", "SwiftyRSAObjc"]
    ),
  ],
  targets: [
    .target(
      name: "SwiftyRSA",
      dependencies: ["SwiftyRSAObjc"]
    ),
    .target(
      name: "SwiftyRSAObjc",
      publicHeadersPath: "include"
    ),
    .testTarget(
      name: "SwiftyRSATests",
      dependencies: ["SwiftyRSA"]
    ),
  ],
  swiftLanguageVersions: [.v5]
)
