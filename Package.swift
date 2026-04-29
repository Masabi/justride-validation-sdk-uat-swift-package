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
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/JustrideValidationSDK-ios-UAT/5.51.0/JustrideValidationSDK-ios-UAT-5.51.0.zip",
            checksum: "c019252dbcfc6660ac96ffd128148a751bfed62224b03e83e5f92f9583a69b5a"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "https://artifactory2.masabi.com/artifactory/libs-release-local/com/masabi/validation/mbedtls-ios/5.51.0/mbedtls-ios-5.51.0.zip",
            checksum: "d8f124781a1fa095c44d92de368ca698739acad4f3768f5066eea1292077239a"
        )

    ]
)
