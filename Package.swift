// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TipCalculatorApp",
    platforms: [
        .iOS(.v16) // iOs 16 and above
    ],
    products: [
        .library(
            name: "TipCalculatorApp",
            targets: ["TipCalculatorApp"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TipCalculatorApp",
            dependencies: []
        )
    ],
    swiftLanguageModes: [.v6]
)
