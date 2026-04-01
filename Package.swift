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
            url: "https://artifactory2.masabi.com/artifactory/libs-snapshot-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.41.0-b69dc40a-SNAPSHOT/JustrideValidationSDK-ios-UAT-5.41.0-b69dc40a-20260401.071347-1.zip",
            checksum: "1d1c05492df88c856fef8b0cf036ee07f6ae727a28d3f40a8bb82a1aecc48957"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-snapshot-local/com/masabi/validation/mbedtls-ios/5.41.0-b69dc40a-SNAPSHOT/mbedtls-ios-5.41.0-b69dc40a-20260401.072312-1.zip",
            checksum: "b27ed24e262312a0cdf7714ec213a30ac0013d91877c751ac6ba857edfbf5353"
        )

    ]
)
