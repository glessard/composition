// swift-tools-version:4.2

import PackageDescription

#if !swift(>=4.2)
let versions = [3,4]
#else
let versions = [SwiftVersion.v3, .v4, .v4_2]
#endif

#if swift(>=4.0)

  let package = Package(
    name: "composition",
    products: [
      .library(name: "composition", targets: ["composition"]),
    ],
    targets: [
      .target(
        name: "composition",
        path: "Sources"),
      .testTarget(
        name: "composition"+"Tests",
        dependencies: [Target.Dependency(stringLiteral: "composition")]),
    ],
    swiftLanguageVersions: versions
  )

#else

  let package = Package(
    name: "composition"
  )

#endif
