// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChime",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK"]),
        .library(name: "AmazonChimeSDKMedia", targets: ["AmazonChimeSDKMedia"])
    ],
    targets: [
        .binaryTarget(name: "AmazonChimeSDK",
                      url: "https://github.com/tiltem/ChimeSwiftPackage/releases/download/0.16.1/AmazonChimeSDK.xcframework.zip",
                      checksum: "aff74e67a5f5be7bac52ba67806c7b590b2ba5900a8c102f058a8c1ded3d9f9b"),
        .binaryTarget(name: "AmazonChimeSDKMedia",
                      url: "https://github.com/tiltem/ChimeSwiftPackage/releases/download/0.16.1/AmazonChimeSDKMedia.xcframework.zip",
                      checksum: "59e768e46c574c546d332bb582cbbbd036bbd77ed2a7dd3fa040984f959f93c5")
    ]
)
