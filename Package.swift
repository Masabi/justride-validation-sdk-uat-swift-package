// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JustrideValidationSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "JustrideValidationSDK",
            targets: ["JustrideValidationSDKWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "JustrideValidationSDKWrapper",
            dependencies: [
                .target(name: "JustrideValidationSDK"),
                .target(name: "mbedtls")
            ],
            path: "JustrideValidationSDKWrapper",
            linkerSettings: [
                .linkedLibrary("sqlite3")
            ]
        ),
        .binaryTarget(
            name: "JustrideValidationSDK",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/6.46.21/JustrideValidationSDK-ios-UAT-6.46.21.zip",
            checksum: "f4547c9013ace170a9ebc90a1d219e1d2b898a1a68755c594eead96a7eb4bd03"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/6.46.21/mbedtls-ios-6.46.21.zip",
            checksum: "736f4ca6c9b4b616355024547e7aa21dc706455c9eeb0e2973653924823b16e3"
        )

    ]
)
