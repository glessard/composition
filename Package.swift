// swift-tools-version:4.2

import PackageDescription

#if swift(>=4.0)

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
  swiftLanguageVersions: [.v3, .v4, .v4_2, .version("5")]
)

#else // swift 3.1.1 or older

let package = Package(
  name: "composition"
)

#endif
