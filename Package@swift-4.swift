// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "composition",
  products: [
    .library(name: "composition", targets: ["composition"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "composition", dependencies: []),
    .testTarget(name: "compositionTests", dependencies: ["composition"]),
  ],
  swiftLanguageVersions: [3,4,5]
)
