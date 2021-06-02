// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NewRelicSPM",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NewRelicSPM",
            targets: ["NewRelic"])
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "NewRelic",
                      url: "https://download.newrelic.com/ios_agent/NewRelic_XCFramework_Agent_7.3.1.zip",
                      checksum: "3362a3ae7ba57a89b53289ac0909f221e1909957b4facee45bebcf7b503bd4ca")
    ]
)
