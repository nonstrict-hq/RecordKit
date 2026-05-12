// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "RecordKit",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "RecordKit", targets: ["RecordKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordKit",
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.88.0-beta.1.zip",
            checksum: "4b9c1f1be6a40013f43abbecfdf4d60c0b38eaeab939a4fb4de74ab2e3478a7e"
        ),
    ]
)
