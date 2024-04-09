// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ColorCube",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "ColorCube",
      targets: ["ColorCube"]),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "ColorCubeObjc",
      publicHeadersPath: "include"
    ),
    .target(
      name: "ColorCube",
      dependencies: ["ColorCubeObjc"]
    ),
    .testTarget(name: "ColorCubeTests", dependencies: ["ColorCube"])
  ]
)
