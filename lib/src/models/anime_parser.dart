import 'package:meta/meta.dart';

abstract class AnimeParser extends BaseParser {
  /// 
  /// if the provider has dub and it's avialable seperatly from sub set this to `true`
  /// 
  @protected bool isDubAvailableSeparately = false;
  /// 
  /// takes anime id
  /// 
  /// returns anime info (including episodes)
  /// 
  Future<IAnimeInfo> fetchAnimeInfo(String animeId, [List<dynamic> args]);

  /// 
  /// takes episode id
  /// 
  /// returns episode sources (video links)
  /// 
  abstract fetchEpisodeSources(episodeId: string, ...args: any): Promise<ISource>;

  /// 
  /// takes episode id
  /// 
  /// returns episode servers (video links) available
  /// 
  abstract fetchEpisodeServers(episodeId: string): Promise<IEpisodeServer[]>;
}