// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ATInternetTracker",
  platforms: [
      .iOS(.v15),
      .tvOS(.v15)
  ],
  products: [
    .library(name: "ATInternetTracker", type: .static, targets: ["ATInternetTracker"]),
  ],
  targets: [
    .target(
      name: "ATInternetTracker",
      path: "ATInternetTracker/Sources"
    ),
    .testTarget(
      name: "ATInternetTrackerTest",
      dependencies: ["ATInternetTracker"],
      path: "ATInternetTracker/Tests",
      exclude: []
    )
  ]
)
