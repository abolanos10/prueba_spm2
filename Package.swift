// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameworkSPM2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FrameworkSPM2",
           // type: .dynamic,
            targets: ["FrameworkSPM2", "AzkoyenPaySDK"]),
        //.library(name: "MobilePaymentSDK", targets: ["MobilePaymentSDK"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/onevcat/Kingfisher", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FrameworkSPM2",
            dependencies: ["AzkoyenPaySDK"]),
        .binaryTarget(
            name: "AzkoyenPaySDK",
            path: "Sources/artifacts/AzkoyenPaySDK.xcframework"
        ),
       /* .binaryTarget(
            name: "Kingfisher",
            path: "Sources/artifacts/Kingfisher.xcframework"
        ), */
/*  resources: [
        ]),
        .binaryTarget(name: "MobilePaymentSDK",
                              path: "artifacts/MobilePaymentSDK.xcframework"), */
        .testTarget(
            name: "FrameworkSPM2Tests",
            dependencies: ["FrameworkSPM2"]),
    ]
)
