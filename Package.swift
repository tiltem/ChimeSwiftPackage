// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChime",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        .library(name: "ChimeSDK", targets: ["ChimeSDK"]),
        .library(name: "ChimeSDKMedia", targets: ["ChimeSDKMedia"])
    ],
    targets: [
        .binaryTarget(name: "ChimeSDK",
                      url: "https://github.com/tiltem/ChimeSwiftPackage/releases/download/0.16.1/ChimeSDK.xcframework.zip",
                      checksum: "af072b7523e207cc90b7042ec3efb2e18a0d2d82f947d7883414b15890e15cca"),
        .binaryTarget(name: "ChimeSDKMedia",
                      url: "https://github.com/tiltem/ChimeSwiftPackage/releases/download/0.16.1/ChimeSDKMedia.xcframework.zip",
                      checksum: "290997343d8cdab8023c61c9b920a1c08c5bc09b6cd302381b16231724aa3019")
    ]
)
