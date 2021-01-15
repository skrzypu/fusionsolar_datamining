// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fusionsolar_datamining",
    dependencies: [
       .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.11.0"),
       .package(url: "https://github.com/jpsim/Yams.git", from: "4.0.0"),
       .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "fusionsolar_datamining",
            dependencies: [.product(name: "Logging", package: "swift-log"), "OpenCombine", "Yams"],
            resources: [
                .copy("Resources/configuration.yaml")]),
        .testTarget(
            name: "fusionsolar_dataminingTests",
            dependencies: ["fusionsolar_datamining"]),
    ]
)
