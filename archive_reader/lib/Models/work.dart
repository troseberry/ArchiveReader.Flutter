class Work {
    late int databaseID;

    String id;
    String title;
    String author;

    String recipientUsers;
    String fandoms;
    String requiredTags;
    String lastUpdated;
    String tags;
    String summary;
    String series;
    String seriesIds;

    String language;

    String wordCount;
    String chapterCount;
    String collections;
    String comments;
    String kudos;
    String bookmarks;
    String hits;

    String latestChapterId;

    late String allStats;

    
    late String readingStats;

    
    late List<String> requiredTagsArray;

    Work({
        required this.id,
        required this.title,
        required this.author,

        required this.recipientUsers,
        required this.fandoms,
        required this.requiredTags,
        required this.lastUpdated,
        required this.tags,
        required this.summary,
        required this.series,
        required this.seriesIds,

        required this.language,

        required this.wordCount,
        required this.chapterCount,
        required this.collections,
        required this.comments,
        required this.kudos,
        required this.bookmarks,
        required this.hits,
        required this.latestChapterId

    });

    factory Work.fromJson(Map<String,dynamic> json) {
        return Work(
            id: json['id'],
            title: json['title'],
            author: json['author'],
            recipientUsers: json['recipientUsers'],
            fandoms: json['fandoms'],
            requiredTags: json['requiredTags'],
            lastUpdated: json['lastUpdated'],
            tags: json ['tags'],
            summary: json['summary'],
            series: json['series'],
            seriesIds: json['seriesIds'],
            language: json['language'],
            wordCount: json['wordCount'],
            chapterCount: json['chapterCount'],
            collections: json['collections'],
            comments: json['comments'],
            kudos: json['kudos'],
            bookmarks: json['bookmarks'],
            hits: json['hits'],
            latestChapterId: json['latestChaptedId'] ?? ""
        );
    }
}