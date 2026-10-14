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
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/6.60.9/JustrideValidationSDK-ios-UAT-6.60.9.zip",
            checksum: "e36e120cebf08af6a0ec6a103647462c6654a0e5e1a6347a0c6dd2cad3a5fce8"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://val-artifactory.justride.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/6.60.9/mbedtls-ios-6.60.9.zip",
            checksum: "5dcc1af25879f0c9aea4c0040d9e5c8c0058a502e059831ed5aa3af15259a5e2"
        )

    ]
)
