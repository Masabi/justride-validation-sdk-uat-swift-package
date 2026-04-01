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
            url: "https://artifactory2.masabi.com/artifactory/libs-snapshot-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.41.0-2cbf810e-SNAPSHOT/JustrideValidationSDK-ios-UAT-5.41.0-2cbf810e-20260401.083659-1.zip",
            checksum: "d21562327c257c14bb0802dff66fd668dc794dc2c525aabe5b7c93617fb02b09"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-snapshot-local/com/masabi/validation/mbedtls-ios/5.41.0-2cbf810e-SNAPSHOT/mbedtls-ios-5.41.0-2cbf810e-20260401.091343-1.zip",
            checksum: "4b387ce6bb854773e84696df5cc8c18673fd5a61dcd5b1ce2e61efb9a6a58324"
        )

    ]
)
