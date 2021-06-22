// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "Able",
    products: [
        .library(
            name: "Able",
            targets: ["Able"]),
    ],
    dependencies: [
        .package(url: "https://github.com/glimpseio/BricBrac.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Able",
            dependencies: ["BricBrac"],
            resources: [.process("Resources")]),
        .testTarget(
            name: "AbleTests",
            dependencies: ["Able"],
            resources: [.copy("TestResources")]),
    ]
)
