# audio-client
Flutter multi-platform client application for Android, iOS, Web, and TV. Handles audio streaming, playback, offline downloads, authentication, and user experience.

# Engineering Guideline

Version: 1.0  
Project: Mobile Audio App  
Tech Stack: Flutter + Riverpod + Dio + go_router

---

# 1. Goal

Mục tiêu của guideline này:

- Maintainable codebase
- Fast feature development
- Consistent architecture
- Stable audio playback system
- Easy onboarding
- Low regression risk

---

# 2. Core Tech Stack

## State Management
- Riverpod + Riverpod Generator

## Networking
- Dio

## Routing
- go_router

## Audio Engine
- just_audio
- audio_service

## Local Database
- Isar

## Model Generation
- freezed
- json_serializable

## Analytics & Crash
- Firebase

---

# 3. Project Structure

```txt
lib/
├── core/
│   ├── audio/
│   ├── cache/
│   ├── constants/
│   ├── errors/
│   ├── extensions/
│   ├── network/
│   ├── router/
│   ├── services/
│   ├── storage/
│   ├── theme/
│   └── utils/
│
├── features/
    ├── auth/
    ├── onboarding/
    ├── home/
    ├── explore/
    ├── search/
    ├── audiobook/
    ├── player/
    ├── playlist/
    ├── library/
    ├── downloads/
    ├── history/
    ├── bookmarks/
    ├── subscription/
    ├── notifications/
    ├── profile/
    ├── settings/
    └── analytics/
│
├── shared/
│   ├── widgets/
│   ├── dialogs/
│   ├── components/
│   └── layouts/
│
└── main.dart
```

---

# 4. Feature Structure

Mỗi feature phải follow structure sau:

```txt
feature_name/
├── data/
│   ├── datasource/
│   ├── models/
│   ├── dto/
│   └── repositories/
│
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
│
└── presentation/
    ├── controllers/
    ├── providers/
    ├── screens/
    └── widgets/
```

---

# 5. Architecture Flow

```txt
UI
↓
Controller / Notifier
↓
Usecase
↓
Repository
↓
Data Source
↓
API / Local DB
```

# Example Flow
```txt
HomeScreen
↓
HomeController
↓
GetHomeStories
↓
HomeRepository
↓
HomeRemoteDatasource
↓
Dio API
```

---

# 6. Naming Convention

## File Names

Sử dụng snake_case.

✅ Correct:

```txt
audio_player_controller.dart
playlist_repository.dart
```

❌ Wrong:

```txt
AudioPlayerController.dart
playlistRepository.dart
```

---

## Class Names

Sử dụng PascalCase.

```dart
class AudioPlayerController
```

---

## Provider Names

```dart
final audioPlayerProvider
final playlistRepositoryProvider
```

---

## Async Provider

```dart
playlistFutureProvider
```

---

# 7. State Management Rules

## Business Logic

Business logic KHÔNG được viết trong Widget.

❌ Wrong:

```dart
onPressed: () async {
  final response = await api.getPlaylist();
}
```

✅ Correct:

```dart
ref.read(playlistControllerProvider.notifier).fetchPlaylist();
```

---

## setState Usage

`setState` chỉ dùng cho:
- animation
- tab state
- local UI state
- form temporary state

Không dùng cho:
- playback state
- authentication
- API state
- business state

---

## Riverpod Usage

- App state → Riverpod
- Business state → Riverpod
- Async state → AsyncNotifier
- Temporary widget state → setState / ValueNotifier

---

# 8. Audio Playback Rules

# IMPORTANT

Toàn bộ app chỉ được có DUY NHẤT 1 audio engine instance.

---

## Audio Engine Location

```txt
core/audio/
```

---

## UI Không Được Điều Khiển Player Trực Tiếp

❌ Wrong:

```dart
player.play();
```

✅ Correct:

```dart
ref.read(audioControllerProvider.notifier).play(track);
```

---

## Playback State Ownership

Playback state chỉ được update bởi:
- AudioController
- AudioService

Không update state trực tiếp từ Widget.

---

## Audio Architecture

```txt
UI
↓
Audio Controller
↓
Audio Service
↓
just_audio
```

---

## Playback States

```txt
idle
loading
buffering
playing
paused
completed
error
```

---

## Stream Handling

Không subscribe stream trực tiếp trong nhiều widget.

Tất cả stream phải centralized trong:
- controller
- service layer

---

# 9. Networking Rules

## HTTP Client

Toàn bộ app sử dụng Dio.

Không dùng:
- http package
- raw client

---

## Token Handling

Auth token phải inject qua interceptor.

Không manually add token mỗi request.

---

## Error Mapping

Tất cả API error phải map về unified Failure model.

```dart
Failure
ApiFailure
NetworkFailure
UnauthorizedFailure
ServerFailure
```

---

## API Response Format

Backend cần follow unified response format:

```json
{
  "success": true,
  "data": {},
  "message": ""
}
```

---

# 10. Repository Rules

## UI Không Được Gọi API

❌ Wrong:

```dart
final response = await dio.get('/playlist');
```

---

## Repository Responsibility

Repository chỉ xử lý:
- API calling
- cache strategy
- data mapping
- local/remote source selection

---

# 11. Async Handling Rules

Tất cả async operation phải handle:
- loading
- success
- error

---

## Không Empty Catch

❌ Wrong:

```dart
catch (e) {}
```

✅ Correct:

```dart
catch (e, st) {
  logger.e(e, st);
}
```

---

## AsyncValue Pattern

```dart
AsyncValue<T>
```

---

# 12. UI Rules

## Shared Widgets

Shared widgets phải nằm tại:

```txt
shared/widgets/
```

Ví dụ:
- AppButton
- AppLoading
- EmptyState
- MiniPlayer
- AppTextField

---

## Hardcode Rules

Không hardcode:
- colors
- spacing
- font sizes
- radius
- duration

---

## Use Theme System

Bắt buộc dùng:
- AppColors
- AppSpacing
- AppTextStyles
- AppRadius

---

## Adaptive & Responsive UI

UI must support:
- Small phones
- Tablets
- Portrait & Landscape

Follow Flutter adaptive/responsive principles:
- Use responsive layouts (`LayoutBuilder`, `MediaQuery`, `Expanded`, `Flexible`)
- Avoid hard-coded sizes
- Support adaptive navigation/layouts by screen size
- Prevent overflow on all screen sizes/orientations

Breakpoints:
- Compact: `< 600dp`
- Medium: `600–840dp`
- Expanded: `> 840dp`

---

# 13. Routing Rules

Sử dụng:
- go_router

Không dùng:
- Navigator.push trực tiếp

---

## Route Definitions

Route phải centralized tại:

```txt
core/router/
```

---

## Deep Link

Tất cả route quan trọng phải support deep link.

Ví dụ:
- playlist
- track
- profile

---

# 14. Offline & Cache Rules

## Cache Layer

Cache logic nằm tại:

```txt
core/cache/
```

---

## Download Logic

Download audio phải tách riêng:

```txt
download_service.dart
```

---

## Cache Strategy

Audio playback ưu tiên:
1. local cache
2. remote source fallback

---

# 15. Logging Rules

Không dùng:

```dart
print()
```

Sử dụng:

```dart
logger.i()
logger.w()
logger.e()
```

---

# 16. Dependency Rules

Không add package tùy ý.

Package mới cần:
- actively maintained
- support latest Flutter
- nhiều community usage
- clear documentation

---

# 17. Performance Rules

Bắt buộc:
- const widgets khi có thể
- pagination
- lazy loading
- image caching

---

## Avoid Rebuilds

Không rebuild toàn bộ screen khi playback state thay đổi.

Player UI phải isolate rebuild scope.

---

## List Performance

List lớn phải:
- use pagination
- avoid nested scroll
- avoid rebuild item toàn list

---

# 18. Firebase Rules

Bắt buộc setup:
- Crashlytics
- Analytics
- Remote Config
- FCM

---

## Analytics Events

Track tối thiểu:
- app_open
- signup
- login
- play_audio
- pause_audio
- complete_audio
- create_playlist

---

# 19. Security Rules

Không hardcode:
- API keys
- tokens
- secrets

---

## Secure Storage

Token phải lưu bằng:
- flutter_secure_storage

---

## Release Security

Production build cần:
- obfuscation
- split debug info

---

# 20. Git Workflow

## Branches

```txt
main
develop
feature/*
fix/*
hotfix/*
```

---

## Branch Naming

```txt
feature/audio-playback
feature/offline-download
fix/player-crash
```

---

## Commit Convention

```txt
feat:
fix:
refactor:
chore:
docs:
test:
```

Ví dụ:

```txt
feat: add background playback
fix: resolve playlist duplication bug
```

---

# 21. Pull Request Rules

Mỗi PR:
- phải review
- phải pass CI
- không merge trực tiếp vào main

---

## PR Checklist

- [ ] Không gọi API trong UI
- [ ] Có loading state
- [ ] Có error handling
- [ ] Naming đúng convention
- [ ] Không duplicate logic
- [ ] Playback logic đúng layer
- [ ] Không hardcode UI values
- [ ] Không có debug code
- [ ] Không unused imports

---

# 22. Code Review Principles

Review focus:
- readability
- consistency
- maintainability
- architecture correctness

Không nitpick vô nghĩa.

---

# 23. Testing Rules

## Bắt buộc test:
- repositories
- audio controller
- critical business logic

---

## Widget Test

Test:
- playback controls
- authentication flow
- playlist interaction

---

# 24. CI/CD Rules

Mỗi PR cần pass:
- flutter analyze
- flutter test

---

## Release Pipeline

```txt
develop → internal testing
main → production
```

---

# 25. Environment Rules

Environments:
- dev
- staging
- production

---

## Environment Files

```txt
.env.dev
.env.stg
.env.prod
```

---

# 26. Audio-specific Principles

Audio playback là core system.

Ưu tiên:
- stability
- predictable state
- background reliability

Tránh:
- multiple player instances
- duplicated playback state
- random stream listeners
- uncontrolled async calls

---

# 27. Error Handling Principles

Không swallow error.

Tất cả error cần:
- logging
- analytics tracking nếu cần
- user-friendly message

---

# 28. Development Priorities

Ưu tiên:
1. Ship feature nhanh
2. Maintain consistency
3. Keep architecture simple
4. Avoid over-engineering

---

# 29. Golden Rule

Code phải:
- readable
- testable
- scalable
- predictable

Nếu abstraction làm code khó hiểu hơn → không dùng abstraction đó.

---

# 30. Final Principle

Chúng ta optimize cho:
- speed
- maintainability
- consistency

Không optimize cho:
- over-engineering
- unnecessary abstraction
- architecture complexity


