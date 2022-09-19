import 'package:meta/meta.dart';

import 'types.dart';
 
abstract class BaseParser {
  ///
  /// Name of the provider
  ///
  abstract final String name;

  ///
  /// The main URL of the provider
  ///
  @protected
  abstract final String baseUrl;

  ///
  /// Most providers are english based, but if the provider is not english based override this value.
  /// must be in [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format
  ///
  @protected
  abstract final List<String> languages;

  ///
  /// override as `true` if the provider **only** supports NSFW content
  ///
  bool isNSFW = false;

  ///
  /// Logo of the provider (used in the website) or `undefined` if not available. 128x128px is preferred
  /// Must be a valid URL (not a data URL)
  ///
  @protected
  abstract final String logo;

  ///
  /// The class's path is determined by the provider's directory structure for example:\
  /// MangaDex class path is `MANGA.MangaDex`. **(case sensitive)**
  ///
  @protected
  abstract final String classPath;

  ///
  /// override as `false` if the provider is **down** or **not working**
  ///
  bool isWorking = true;

  ///
  /// returns provider stats
  ///
  IProviderStats get getStats {
    return IProviderStats(
      name: name,
      lang: languages,
      baseUrl: baseUrl,
      classPath: classPath,
      isNSFW: isNSFW,
      isWorking: isWorking,
      logo: logo,
    );
  }
}
