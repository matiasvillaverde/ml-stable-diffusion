// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "stable-diffusion-old",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "StableDiffusionOld",
            targets: ["StableDiffusionOld"])
    ],
    dependencies: [
        .package(url: "https://github.com/huggingface/swift-transformers", from: "0.1.13"),
    ],
    targets: [
        .target(
            name: "StableDiffusionOld",
            dependencies:  [
                .product(name: "Transformers", package: "swift-transformers"),
            ],
            path: "swift/StableDiffusion")
    ]
)
