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
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.42.0/JustrideValidationSDK-ios-UAT-5.42.0.zip",
            checksum: "0e6e71ed54430a711005bba001fe70f18ffc5e6e7b6f556b1bdaaf2a6c784ead"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.42.0/mbedtls-ios-5.42.0.zip",
            checksum: "0a212d582fc557de5e31d9ea39ea59b1191538361a7ee519a9005b9df3a4ca64"
        )

    ]
)
