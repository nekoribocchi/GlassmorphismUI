// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GlassmorphismUI",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GlassmorphismUI",
            targets: ["GlassmorphismUI"]),
    ],
    targets: [
            .target(
                name: "GlassmorphismUI",
                resources: [
                    .process("Fonts")
                ]
            ),
        ]
    )
