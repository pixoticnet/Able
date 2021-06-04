// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Able",
    products: [
        .library(
            name: "Able",
            targets: ["Able"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Able",
            dependencies: []),
        .testTarget(
            name: "AbleTests",
            dependencies: ["Able"]),
    ]
)
