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
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.51.14/JustrideValidationSDK-ios-UAT-5.51.14.zip",
            checksum: "068d6b9728a2962fe3e92c32f36f11191e8c439b3e4214293acaa29856bedfc9"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.51.14/mbedtls-ios-5.51.14.zip",
            checksum: "ad32e6eb54f04364ed7e6505345bd3b537d09014554b28b0394d4ef94359aec2"
        )

    ]
)
