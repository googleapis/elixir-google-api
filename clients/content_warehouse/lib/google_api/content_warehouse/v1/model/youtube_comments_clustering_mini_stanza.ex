# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  @moduledoc """
  Intended to be simpler to work with than the ExportedStanza it's derived from See documentation: https://g3doc.corp.google.com/company/teams/youtube/community_intelligence/eng_resources/data_sources.md#ministanza Next available: 84

  ## Attributes

  *   `isDeleted` (*type:* `boolean()`, *default:* `nil`) - Whether a comment is from deleted shares. See stanza_restrictions for more specific information and is_publicly_visible for comments which are allowed to be seen by everyone.
  *   `numRepliers` (*type:* `integer()`, *default:* `nil`) - Number of different repliers the comment has.
  *   `ytReplyToItemId` (*type:* `String.t`, *default:* `nil`) - For replies to replies, this contains the parent reply's id. The parent_id field is actually the root stanza_id (not guaranteed AFAIK).
  *   `detailedLanguageCode` (*type:* `String.t`, *default:* `nil`) - The language code with extra script details. This is derived from detailed_language_code if it's populated, otherwise the same as language_code. E.g. mr-Latn
  *   `textEmbedding` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding.t}`, *default:* `nil`) - Comment text embedding.
  *   `contentUpdateTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The stanza content last update timestamp, as observed by the server. Note that for many comments older than Nov. 2014 this is unset in the original stanza. MiniStanza tries to be consistent with the original so for such comments it remains unset in MiniStanza. If you use this field you should check has_content_update_timestamp().
  *   `ytCommentQualityScore3` (*type:* `float()`, *default:* `nil`) - 
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - The channel of the video or post this comment belongs to. In certain circumstances a video can belong to multiple channels, this channel_id does not handle that situation well. go/yt-identity-overview for further reading.
  *   `textQualityScores2` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t`, *default:* `nil`) - Predicted probability of the comment being flagged based on the text. For testing the new annotation process only.
  *   `isPinned` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is pinned. This is derived from YTMS and may be out of sync with other fields (a day early or behind).
  *   `creationTimeInSeconds` (*type:* `String.t`, *default:* `nil`) - The time when the comment is created.
  *   `ytCommentQualityScore` (*type:* `float()`, *default:* `nil`) - Existing quality corpus scores.
  *   `textQualityScores` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t`, *default:* `nil`) - Predicted probability of the comment being flagged based on the text.
  *   `superThanksInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo.t`, *default:* `nil`) - Super Thanks related info if a comment is posted through a Super Thanks purchase.
  *   `wordEntropy` (*type:* `float()`, *default:* `nil`) - Word entropy of the comment.
  *   `endUserDeleted` (*type:* `boolean()`, *default:* `nil`) - Whether a comment is deleted by the end user.
  *   `commentClassificationBuckets` (*type:* `list(String.t)`, *default:* `nil`) - List of pre-defined classification score buckets to which the comment belongs. E.g. satisfaction_v1_percentile_80.
  *   `parentId` (*type:* `String.t`, *default:* `nil`) - The parent stanza's stanza_id, empty for top-level posts (non-replies). Prefer is_reply field for checking if a comment is a reply since that is unaffected by surrogatization. For replies to replies, this is the root stanza_id (not guaranteed AFAIK).
  *   `mustDeleteComments` (*type:* `boolean()`, *default:* `nil`) - Whether a comment's author channel is deleted. Populated from http://shortn/_YttLvbraAI.
  *   `offlineEngagementScores` (*type:* `map()`, *default:* `nil`) - Offline engagement scores map. Keyed by various model names.
  *   `empiricalCtrs` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics.t`, *default:* `nil`) - Comments empirical CTRs.
  *   `postId` (*type:* `String.t`, *default:* `nil`) - The post this comment belongs to.
  *   `sensitivityScores` (*type:* `map()`, *default:* `nil`) - Sensitivity scores map for smart reply sensitivity scores. Keyed by model names. See (g3doc/company/teams/expander/research/conversation/sensitive.md) for more information on sensitivity scores.
  *   `misinfoScores` (*type:* `map()`, *default:* `nil`) - Misinfo scores map. Keyed by various model names.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Unicode CLDR language code of the segments, as implemented by //depot/google3/java/com/google/i18n/identifiers/LanguageCode.java This is derived from user_content and should be considered the canonical language code of the comment.
  *   `subjectIsVideoOwner` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is authored by the creator.
  *   `automodScores` (*type:* `map()`, *default:* `nil`) - Automod scores map. Keyed by various model names. Deprecated. Consider using low_quality_scores instead.
  *   `lowQualityDecisions` (*type:* `map()`, *default:* `nil`) - Low quality decisions. Keyed by decision types corresponding to secondary keys.
  *   `distillerEngagements` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements.t`, *default:* `nil`) - All distiller engagements like reports and downvotes.
  *   `commentType` (*type:* `String.t`, *default:* `nil`) - Whether the comment is on a video, post, or other product.
  *   `shortReplyVideoId` (*type:* `String.t`, *default:* `nil`) - Associated Short Reply video ID if the comment represents a Short Reply. See go/yt-comment-sticker-m2.
  *   `ansibleScores` (*type:* `map()`, *default:* `nil`) - TnS Ansible scores map. Keyed by various model names.
  *   `commentClassificationRanking` (*type:* `map()`, *default:* `nil`) - Comment classification for ranking mapping all secondary keys to values. E.g. {"joke_v1":0.8, "joke_v2":0.7, "question_v1":0.3}.
  *   `videoId` (*type:* `String.t`, *default:* `nil`) - The video this comment belongs to.
  *   `mentionedTimestampCommentSecond` (*type:* `integer()`, *default:* `nil`) - Timed comments for the "mentioned" secondary key.
  *   `commentModeratedRestrictions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction.t)`, *default:* `nil`) - Contains various comment moderated restrictions. Only available in the Atlas version. Extracted from http://shortn/_2LzgPEF5K3
  *   `channelProfileQualityScores` (*type:* `map()`, *default:* `nil`) - Channel profile quality scores map. Keyed by various model names.
  *   `ytCommentQualityScore2` (*type:* `float()`, *default:* `nil`) - 
  *   `subscriptionTimestamp` (*type:* `String.t`, *default:* `nil`) - The timestamp (in seconds) when the author subscribed to the channel.
  *   `numDislikes` (*type:* `integer()`, *default:* `nil`) - Number of dislikes the comment has. num_likes and num_dislikes are retrieved from a different source than other fields and may be out of sync (a day early or behind).
  *   `isSubscriber` (*type:* `boolean()`, *default:* `nil`) - If the comment author is publicly subscribed to the channel.
  *   `stanzaId` (*type:* `String.t`, *default:* `nil`) - Refers to the stanza this data is derived from.
  *   `impersonationScores` (*type:* `map()`, *default:* `nil`) - Impersonation scores map. Keyed by secondary key (score type).
  *   `subject` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t`, *default:* `nil`) - The author of the comment Prefer using yt_author_channel_id instead of subject when possible.
  *   `segments` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments.t`, *default:* `nil`) - A textual content for the context.
  *   `eligibleQualifiedTeaserFilters` (*type:* `list(String.t)`, *default:* `nil`) - The qualified comment teaser filters that this comment is eligible for. Refer to go/comment-teaser-design for more information.
  *   `isAuthorSponsor` (*type:* `boolean()`, *default:* `nil`) - If the author is a channel member (sponsor).
  *   `coverageSamplingEligible` (*type:* `boolean()`, *default:* `nil`) - Whether or not this comment is eligible for comment classifier coverage sampling (in Kapla). Refer to go/coverage-monitoring-for-kapla-comment-classifiers for more information.
  *   `smartReplies` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply.t}`, *default:* `nil`) - Smart replies for this comment. Keyed by model names.
  *   `hasCreatorReply` (*type:* `boolean()`, *default:* `nil`) - If the comment has a creator reply.
  *   `stanzaRestrictions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction.t)`, *default:* `nil`) - Contains various restriction information about a stanza.
  *   `commentEnforcementStatus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus.t`, *default:* `nil`) - Contains the current status of comment enforcement. This provides a summary/aggregation of all restrictions (one per comment), while CommentModeratedRestriction provides the history of restrictions (multiple per comment). Extracted from http://shortn/_m5yiWa8ENR
  *   `lastReplyTimestampUsec` (*type:* `String.t`, *default:* `nil`) - The time when last reply is created.
  *   `numReplies` (*type:* `integer()`, *default:* `nil`) - Number of non-abusive replies the comment has.
  *   `numSubscribersBucket` (*type:* `integer()`, *default:* `nil`) - Bucketed number of subscribers held by comment author.
  *   `numLikes` (*type:* `integer()`, *default:* `nil`) - Number of likes the comment has. num_likes and num_dislikes are retrieved from a different source than other fields and may be out of sync (a day early or behind).
  *   `charEntropy` (*type:* `float()`, *default:* `nil`) - Char entropy of the comment.
  *   `hasCreatorHeart` (*type:* `boolean()`, *default:* `nil`) - Indicator for whether there is creator heart on this comment.
  *   `isPubliclyVisible` (*type:* `boolean()`, *default:* `nil`) - If the post is publicly visible.
  *   `creationDevice` (*type:* `String.t`, *default:* `nil`) - The creation device. Derived from shares:yt_creation_device
  *   `commentClassification` (*type:* `map()`, *default:* `nil`) - Comment classification mapping all secondary keys to values. E.g. {"joke_v1":0.8, "joke_v2":0.7, "question_v1":0.3}.
  *   `content` (*type:* `String.t`, *default:* `nil`) - The text content of the comment.
  *   `isReply` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is a reply.
  *   `ytAuthorChannelId` (*type:* `String.t`, *default:* `nil`) - The youtube channel id of the comment author. One person can have multiple channels and one channel can have multiple users. go/yt-identity-overview for further reading.
  *   `channelDiscussionId` (*type:* `String.t`, *default:* `nil`) - The channel this channel discussion comment belongs to. Note that this will match channel_id for such comments.
  *   `lowQualityScores` (*type:* `map()`, *default:* `nil`) - Comment low quality scores. Keyed by various model names. Rename from the old automod_scores.
  *   `sentiment` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment.t`, *default:* `nil`) - Sentiment. This omits entity_sentiment and keeps only the polarity, magnitude, and score. Sentiment as currently implemented is not debiased and has limited language coverage. Please read go/comments-sentiment-access before using.
  *   `textLength` (*type:* `integer()`, *default:* `nil`) - Text length of the comment in UTF-16 code points. The encoding could change in the future.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isDeleted => boolean() | nil,
          :numRepliers => integer() | nil,
          :ytReplyToItemId => String.t() | nil,
          :detailedLanguageCode => String.t() | nil,
          :textEmbedding =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding.t()
            }
            | nil,
          :contentUpdateTimestamp => DateTime.t() | nil,
          :ytCommentQualityScore3 => float() | nil,
          :channelId => String.t() | nil,
          :textQualityScores2 =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t()
            | nil,
          :isPinned => boolean() | nil,
          :creationTimeInSeconds => String.t() | nil,
          :ytCommentQualityScore => float() | nil,
          :textQualityScores =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t()
            | nil,
          :superThanksInfo =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo.t() | nil,
          :wordEntropy => float() | nil,
          :endUserDeleted => boolean() | nil,
          :commentClassificationBuckets => list(String.t()) | nil,
          :parentId => String.t() | nil,
          :mustDeleteComments => boolean() | nil,
          :offlineEngagementScores => map() | nil,
          :empiricalCtrs =>
            GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics.t() | nil,
          :postId => String.t() | nil,
          :sensitivityScores => map() | nil,
          :misinfoScores => map() | nil,
          :languageCode => String.t() | nil,
          :subjectIsVideoOwner => boolean() | nil,
          :automodScores => map() | nil,
          :lowQualityDecisions => map() | nil,
          :distillerEngagements =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements.t()
            | nil,
          :commentType => String.t() | nil,
          :shortReplyVideoId => String.t() | nil,
          :ansibleScores => map() | nil,
          :commentClassificationRanking => map() | nil,
          :videoId => String.t() | nil,
          :mentionedTimestampCommentSecond => integer() | nil,
          :commentModeratedRestrictions =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction.t()
            )
            | nil,
          :channelProfileQualityScores => map() | nil,
          :ytCommentQualityScore2 => float() | nil,
          :subscriptionTimestamp => String.t() | nil,
          :numDislikes => integer() | nil,
          :isSubscriber => boolean() | nil,
          :stanzaId => String.t() | nil,
          :impersonationScores => map() | nil,
          :subject =>
            GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t() | nil,
          :segments => GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments.t() | nil,
          :eligibleQualifiedTeaserFilters => list(String.t()) | nil,
          :isAuthorSponsor => boolean() | nil,
          :coverageSamplingEligible => boolean() | nil,
          :smartReplies =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply.t()
            }
            | nil,
          :hasCreatorReply => boolean() | nil,
          :stanzaRestrictions =>
            list(GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction.t()) | nil,
          :commentEnforcementStatus =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus.t()
            | nil,
          :lastReplyTimestampUsec => String.t() | nil,
          :numReplies => integer() | nil,
          :numSubscribersBucket => integer() | nil,
          :numLikes => integer() | nil,
          :charEntropy => float() | nil,
          :hasCreatorHeart => boolean() | nil,
          :isPubliclyVisible => boolean() | nil,
          :creationDevice => String.t() | nil,
          :commentClassification => map() | nil,
          :content => String.t() | nil,
          :isReply => boolean() | nil,
          :ytAuthorChannelId => String.t() | nil,
          :channelDiscussionId => String.t() | nil,
          :lowQualityScores => map() | nil,
          :sentiment =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment.t() | nil,
          :textLength => integer() | nil
        }

  field(:isDeleted)
  field(:numRepliers)
  field(:ytReplyToItemId)
  field(:detailedLanguageCode)

  field(:textEmbedding,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding,
    type: :map
  )

  field(:contentUpdateTimestamp, as: DateTime)
  field(:ytCommentQualityScore3)
  field(:channelId)

  field(:textQualityScores2,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation
  )

  field(:isPinned)
  field(:creationTimeInSeconds)
  field(:ytCommentQualityScore)

  field(:textQualityScores,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation
  )

  field(:superThanksInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo
  )

  field(:wordEntropy)
  field(:endUserDeleted)
  field(:commentClassificationBuckets, type: :list)
  field(:parentId)
  field(:mustDeleteComments)
  field(:offlineEngagementScores, type: :map)

  field(:empiricalCtrs,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics
  )

  field(:postId)
  field(:sensitivityScores, type: :map)
  field(:misinfoScores, type: :map)
  field(:languageCode)
  field(:subjectIsVideoOwner)
  field(:automodScores, type: :map)
  field(:lowQualityDecisions, type: :map)

  field(:distillerEngagements,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements
  )

  field(:commentType)
  field(:shortReplyVideoId)
  field(:ansibleScores, type: :map)
  field(:commentClassificationRanking, type: :map)
  field(:videoId)
  field(:mentionedTimestampCommentSecond)

  field(:commentModeratedRestrictions,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction,
    type: :list
  )

  field(:channelProfileQualityScores, type: :map)
  field(:ytCommentQualityScore2)
  field(:subscriptionTimestamp)
  field(:numDislikes)
  field(:isSubscriber)
  field(:stanzaId)
  field(:impersonationScores, type: :map)
  field(:subject, as: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto)
  field(:segments, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments)
  field(:eligibleQualifiedTeaserFilters, type: :list)
  field(:isAuthorSponsor)
  field(:coverageSamplingEligible)

  field(:smartReplies,
    as:
      GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply,
    type: :map
  )

  field(:hasCreatorReply)

  field(:stanzaRestrictions,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction,
    type: :list
  )

  field(:commentEnforcementStatus,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus
  )

  field(:lastReplyTimestampUsec)
  field(:numReplies)
  field(:numSubscribersBucket)
  field(:numLikes)
  field(:charEntropy)
  field(:hasCreatorHeart)
  field(:isPubliclyVisible)
  field(:creationDevice)
  field(:commentClassification, type: :map)
  field(:content)
  field(:isReply)
  field(:ytAuthorChannelId)
  field(:channelDiscussionId)
  field(:lowQualityScores, type: :map)
  field(:sentiment, as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment)
  field(:textLength)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
