// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataMiplib3",
    platforms: [.macOS(.v13), .iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DataMiplib3",
            targets: ["DataMiplib3"]
        ),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DataMiplib3",
            resources: [
                // `.copy` leaves files untouched (no asset compilation).
                .copy("Resources/Data/Miplib3") // <-- raw test data
            ]
        ),

    ]
)
