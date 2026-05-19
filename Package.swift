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
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.88.3.zip",
            checksum: "904483a391fa5a9d15ad388be65b1fd7fa9d74584bbc74b0e500d45106fe498a"
        ),
    ]
)
