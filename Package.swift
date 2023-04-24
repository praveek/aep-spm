// swift-tools-version:5.1

import PackageDescription

let aepVersion = "1.0.0"

let package = Package(
  name: "AEP SDK",
  platforms: [.iOS(.v10), .tvOS(.v10)],
  products: [
     .library(name: "AEPCore", targets: ["AEPCore"]),
     .library(name: "AEPIdentity", targets: ["AEPIdentity"]),
     .library(name: "AEPLifecycle", targets: ["AEPLifecycle"]),
     .library(name: "AEPServices", targets: ["AEPServices"]),
     .library(name: "AEPSignal", targets: ["AEPSignal"]),
      // Edge
     .library(name: "AEPEdge", targets: ["AEPEdge"]),
      // Assurance
     .library(name: "AEPAssurance", targets: ["AEPAssurance"]),
   ],
   dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-rulesengine-ios.git", .upToNextMajor(from: "1.2.2")),
   ],
   targets: [
        .target(name: "AEPCore",
                dependencies: ["AEPServices", "AEPRulesEngine"],
                path: "aepsdk-core-ios/AEPCore/Sources"),
        .target(name: "AEPIdentity",
                dependencies: ["AEPCore"],
                path: "aepsdk-core-ios/AEPIdentity/Sources"),
        .target(name: "AEPLifecycle",
                dependencies: ["AEPCore"],
                path: "aepsdk-core-ios/AEPLifecycle/Sources"),
        .target(name: "AEPServices",
                dependencies: [],
                path: "aepsdk-core-ios/AEPServices/Sources"),
        .target(name: "AEPSignal",
                dependencies: ["AEPCore"],
                path: "aepsdk-core-ios/AEPSignal/Sources"),
        .target(name: "AEPEdge",
                dependencies: ["AEPCore"],
                path: "aepsdk-edge-ios/Sources"),
        .target(name: "AEPAssurance",
                dependencies: ["AEPCore"],
                path: "aepsdk-assurance-ios/AEPAssurance/Source"),
    ]
)
