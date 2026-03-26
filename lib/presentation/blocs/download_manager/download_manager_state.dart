part of 'download_manager_cubit.dart';

enum DownloadStatus { initial, downloading, downloaded, error }

@freezed
abstract class DownloadManagerState with _$DownloadManagerState {
  const DownloadManagerState._();

  const factory DownloadManagerState({
    @Default(DownloadStatus.initial) DownloadStatus status,
    @Default(0) double stylePackProgress,
    @Default(0) double tileRegionProgress,
    @Default(null) String? error,
  }) = _DownloadManagerState;

  bool get isDownloaded => status == DownloadStatus.downloaded;
  bool get isDownloading => status == DownloadStatus.downloading;
}
