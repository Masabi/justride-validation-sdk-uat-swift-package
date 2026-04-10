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
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.43.5/JustrideValidationSDK-ios-UAT-5.43.5.zip",
            checksum: "ef1bdd71baa1fc92850c0bb22becedfad5a3e3087be56c874b04f1ae82b0b0dd"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.43.5/mbedtls-ios-5.43.5.zip",
            checksum: "d754d0f92c136647b1ec36fdfb1281b2c1efcdcaee7dd1b99050c161273e294e"
        )

    ]
)
