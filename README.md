# SGR Vision SDK — iOS / macOS

[@sgrsoft/vision-sdk](https://vision.sgrsoft.com) 의 iOS·macOS 네이티브 SDK(Metal) 바이너리 배포 채널.
실시간 비디오 화질 개선 — 웹 SDK 와 **동일한 옵션·프로필·라이선스 계약**을 사용합니다.

## 설치 (Swift Package Manager)

```swift
.package(url: "https://github.com/SGRsoft-Dev/vision-ios-sdk.git", from: "0.1.0")
```

Xcode: *File ▸ Add Package Dependencies…* 에 위 URL 입력. `SGRVision`(XCFramework) 이 추가됩니다.

지원: **iOS 15+ · macOS 12+** (arm64 기기 / arm64·x86_64 시뮬레이터 / arm64·x86_64 macOS).

## 빠른 시작

### SwiftUI
```swift
import SGRVision
import AVFoundation

let player = AVPlayer(url: hlsURL)

VisionVideoView(
    player: player,
    options: VisionOptions(profile: .default, licenseKey: "VSK-…"),
    onLicense: { state in /* .pending → .ok / .invalid */ }
)
```

라이선스 검증 통과 전까지 원본이 재생되고, 통과하면 효과가 적용됩니다. 네이티브는 도메인(Origin)
대신 **번들 ID** 를 서버로 전송하므로, 라이선스의 `allowedOrigins` 에 앱의 번들 ID 를 포함해야 합니다.

### 명령형
```swift
let enhancer = VisionEnhancer(player: player, options: VisionOptions(profile: .ott))
enhancer.update(VisionOptions(profile: .cctv, contrast: 0.4))
enhancer.destroy()
```

## 프로필

`off · default(Cinematic) · detail · ott · education · cctv · anime · oled · retro`
— 업스케일(lanczos/FSR EASU/bilinear) · RCAS 샤프닝 · CNN(cnn1/멀티레이어) 패스 포함.

## 라이선스

비공개·계약 기반. 문의: support@sgrsoft.com
