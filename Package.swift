// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "AEP SDK",
  platforms: [.iOS(.v10), .tvOS(.v10)],
  products: [
    // Core
    .library(name: "AEPCore", targets: ["AEPCore"]),
    .library(name: "AEPIdentity", targets: ["AEPIdentity"]),
    .library(name: "AEPLifecycle", targets: ["AEPLifecycle"]),
    .library(name: "AEPServices", targets: ["AEPServices"]),
    .library(name: "AEPSignal", targets: ["AEPSignal"]),
    // Analytics
    .library(name: "AEPAnalytics", targets: ["AEPAnalytics"]),
    // Assurance
    .library(name: "AEPAssurance", targets: ["AEPAssurance"]),
    // Audience
    .library(name: "AEPAudience", targets: ["AEPAudience"]),
    // Campaign
    .library(name: "AEPCampaign", targets: ["AEPCampaign"]),
    // Campaign Classic
    .library(name: "AEPCampaignClassic", targets: ["AEPCampaignClassic"]),
    // Edge
    .library(name: "AEPEdge", targets: ["AEPEdge"]),
    // Edge Bridge
    .library(name: "AEPEdgeBridge", targets: ["AEPEdgeBridge"]),
    // Edge Consent
    .library(name: "AEPEdgeConsent", targets: ["AEPEdgeConsent"]),
    // Edge Identity
    .library(name: "AEPEdgeIdentity", targets: ["AEPEdgeIdentity"]),
    // Media
    .library(name: "AEPMedia", targets: ["AEPMedia"]),
    // Messaging
    .library(name: "AEPMessaging", targets: ["AEPMessaging"]),
    // Optimize
    .library(name: "AEPOptimize", targets: ["AEPOptimize"]),
    // Places
    .library(name: "AEPPlaces", targets: ["AEPPlaces"]),
    // Target
    .library(name: "AEPTarget", targets: ["AEPTarget"]),
    // User Profile
    .library(name: "AEPUserProfile", targets: ["AEPUserProfile"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/adobe/aepsdk-rulesengine-ios.git", .upToNextMajor(from: "1.2.2"))
  ],
  targets: [
    // Core
    .target(
      name: "AEPCore",
      dependencies: ["AEPServices", "AEPRulesEngine"],
      path: "aepsdk-core-ios/AEPCore/Sources"),
    .target(
      name: "AEPIdentity",
      dependencies: ["AEPCore"],
      path: "aepsdk-core-ios/AEPIdentity/Sources"),
    .target(
      name: "AEPLifecycle",
      dependencies: ["AEPCore"],
      path: "aepsdk-core-ios/AEPLifecycle/Sources"),
    .target(
      name: "AEPServices",
      dependencies: [],
      path: "aepsdk-core-ios/AEPServices/Sources"),
    .target(
      name: "AEPSignal",
      dependencies: ["AEPCore"],
      path: "aepsdk-core-ios/AEPSignal/Sources"),
    // Analytics
    .target(
      name: "AEPAnalytics",
      dependencies: ["AEPCore"],
      path: "aepsdk-analytics-ios/AEPAnalytics/Sources"),
    // Assurance
    .target(
      name: "AEPAssurance",
      dependencies: ["AEPCore"],
      path: "aepsdk-assurance-ios/AEPAssurance/Source"),
    // Audience
    .target(
      name: "AEPAudience",
      dependencies: ["AEPCore"],
      path: "aepsdk-audience-ios/AEPAudience/Sources"),
    // Campaign
    .target(
      name: "AEPCampaign",
      dependencies: ["AEPCore"],
      path: "aepsdk-campaign-ios/AEPCampaign/Sources"),
    // Campaign Classic
    .target(
      name: "AEPCampaignClassic",
      dependencies: ["AEPCore"],
      path: "aepsdk-campaign-ios/AEPCampaignClassic/Sources"),
      // Edge
    .target(
      name: "AEPEdge",
      dependencies: ["AEPCore"],
      path: "aepsdk-edge-ios/Sources"),
      // Edge Bridge
    .target(
      name: "AEPEdgeBridge",
      dependencies: ["AEPCore"],
      path: "aepsdk-edgebridge-ios/Sources"),
      // Edge Consent
    .target(
      name: "AEPEdgeConsent",
      dependencies: ["AEPCore"],
      path: "aepsdk-edgeconsent-ios/Sources"),
      // Edge Identity
    .target(
      name: "AEPEdgeIdentity",
      dependencies: ["AEPCore"],
      path: "aepsdk-edgeidentity-ios/Sources"),
      // Media
    .target(
      name: "AEPMedia",
      dependencies: ["AEPCore"],
      path: "aepsdk-media-ios/AEPMedia/Sources"),
      // Messaging
    .target(
      name: "AEPMessaging",
      dependencies: ["AEPCore"],
      path: "aepsdk-messaging-ios/AEPMessaging/Sources"),
      // Optimize
    .target(
      name: "AEPOptimize",
      dependencies: ["AEPCore"],
      path: "aepsdk-optimize-ios/Sources"),
      // Places
    .target(
      name: "AEPPlaces",
      dependencies: ["AEPCore"],
      path: "aepsdk-places-ios/AEPPlaces/Sources"),
      // Target
    .target(
      name: "AEPTarget",
      dependencies: ["AEPCore"],
      path: "aepsdk-target-ios/AEPTarget/Sources"),
      // User Profile
    .target(
      name: "AEPUserProfile",
      dependencies: ["AEPCore"],
      path: "aepsdk-userprofile-ios/AEPUserProfile/Sources"),
  ]
)
