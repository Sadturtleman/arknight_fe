// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OperatorList)
final operatorListProvider = OperatorListFamily._();

final class OperatorListProvider
    extends $AsyncNotifierProvider<OperatorList, PaginationState> {
  OperatorListProvider._({
    required OperatorListFamily super.from,
    required OperatorListRequest super.argument,
  }) : super(
         retry: null,
         name: r'operatorListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$operatorListHash();

  @override
  String toString() {
    return r'operatorListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OperatorList create() => OperatorList();

  @override
  bool operator ==(Object other) {
    return other is OperatorListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$operatorListHash() => r'f89576b575840d2451cacba687cc9386f5b8a815';

final class OperatorListFamily extends $Family
    with
        $ClassFamilyOverride<
          OperatorList,
          AsyncValue<PaginationState>,
          PaginationState,
          FutureOr<PaginationState>,
          OperatorListRequest
        > {
  OperatorListFamily._()
    : super(
        retry: null,
        name: r'operatorListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OperatorListProvider call(OperatorListRequest request) =>
      OperatorListProvider._(argument: request, from: this);

  @override
  String toString() => r'operatorListProvider';
}

abstract class _$OperatorList extends $AsyncNotifier<PaginationState> {
  late final _$args = ref.$arg as OperatorListRequest;
  OperatorListRequest get request => _$args;

  FutureOr<PaginationState> build(OperatorListRequest request);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PaginationState>, PaginationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PaginationState>, PaginationState>,
              AsyncValue<PaginationState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
