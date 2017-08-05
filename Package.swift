// swift-tools-version:4.0

import PackageDescription

let name = "composition"

#if swift(>=4.0)

  let package = Package(
    name: name,
    products: [
      .library(name: name, targets: [name]),
    ],
    targets: [
      .target(
        name: name,
        path: "Sources"),
      .testTarget(
        name: name+"Tests",
        dependencies: [Target.Dependency(stringLiteral: name)]),
    ],
    swiftLanguageVersions: [3,4]
  )

#else

  let package = Package(
    name: name
  )

#endif
