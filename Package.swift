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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.103.0.zip",
            checksum: "00135479a17ccaed5157cc592e9e377eafbd78b5cea3b2f2c9abb05f4573a834"
        ),
    ]
)
