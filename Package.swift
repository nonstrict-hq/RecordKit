// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "RecordKit",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "RecordKit", targets: ["RecordKit"]),
        .library(name: "RecordKitAppStore", targets: ["RecordKitAppStore"]),
    ],
    targets: [
        .binaryTarget(
            name: "RecordKit",
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.2.zip",
            checksum: "4cec574a8866402a104783372f17884326fed5c8cf5494f479b3d40d54cff9a1"
        ),
        .binaryTarget(
            name: "RecordKitAppStore",
            url: "https://download.nonstrict.eu/recordkit/recordkit-swift-0.81.0-beta.2-appstore.zip",
            checksum: "c4c432a1a19854d60a8e5a512902ac0eeee3c45c753dc3d26acf4ef64235a213"
        )
    ]
)
