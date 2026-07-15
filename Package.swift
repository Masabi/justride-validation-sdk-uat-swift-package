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
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/6.17.0/JustrideValidationSDK-ios-UAT-6.17.0.zip",
            checksum: "e7511cebe63a06fe498c0214ef010b901873a9e400403b0003d702fc432046cd"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/6.17.0/mbedtls-ios-6.17.0.zip",
            checksum: "e08b4352b2c81bc9aa9270f9718ba544bc987495e8deb388b20eb84b0ab028bb"
        )

    ]
)
