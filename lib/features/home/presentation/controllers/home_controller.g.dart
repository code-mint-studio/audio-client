// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeController)
const homeControllerProvider = HomeControllerProvider._();

final class HomeControllerProvider
    extends $AsyncNotifierProvider<HomeController, List<Story>> {
  const HomeControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'homeControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$homeControllerHash();

  @$internal
  @override
  HomeController create() => HomeController();
}

String _$homeControllerHash() => r'cbbf274d924df0bc66f8baf8022b75c23eb9c539';

abstract class _$HomeController extends $AsyncNotifier<List<Story>> {
  FutureOr<List<Story>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Story>>, List<Story>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Story>>, List<Story>>,
        AsyncValue<List<Story>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
