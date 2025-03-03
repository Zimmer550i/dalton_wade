class BoxIconData {
  final String assetPath;
  final String label;
  final String? link;
  final String? playStore;
  final String? appStore;

  const BoxIconData({
    required this.assetPath,
    required this.label,
    this.link,
    this.playStore,
    this.appStore, 
  });
}
