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

defmodule GoogleApi.GroupsSettings.V1.Model.Groups do
  @moduledoc """
  JSON template for Group resource

  ## Attributes

  *   `whoCanApproveMessages` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can approve pending messages in the moderation queue. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanModerateContent` (*type:* `String.t`, *default:* `nil`) - Specifies who can moderate content. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanEnterFreeFormTags` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to enter free form tags for topics in a forum. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `allowExternalMembers` (*type:* `String.t`, *default:* `nil`) - Identifies whether members external to your organization can join the group. Possible values are:  
      - true: G Suite users external to your organization can become members of this group. 
      - false: Users not belonging to the organization are not allowed to become members of this group.
  *   `whoCanMakeTopicsSticky` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can make topics appear at the top of the topic list. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanUnassignTopic` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unassign any topic in a forum. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `defaultMessageDenyNotificationText` (*type:* `String.t`, *default:* `nil`) - When a message is rejected, this is text for the rejection notification sent to the message's author. By default, this property is empty and has no value in the API's response body. The maximum notification text size is 10,000 characters. Note: Requires sendMessageDenyNotification property to be true.
  *   `whoCanAssignTopics` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to assign topics in a forum to another user. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanModifyTagsAndCategories` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to change tags and categories. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanViewGroup` (*type:* `String.t`, *default:* `nil`) - Permissions to view group messages. Possible values are:  
      - ANYONE_CAN_VIEW: Any Internet user can view the group's messages.  
      - ALL_IN_DOMAIN_CAN_VIEW: Anyone in your account can view this group's messages. 
      - ALL_MEMBERS_CAN_VIEW: All group members can view the group's messages. 
      - ALL_MANAGERS_CAN_VIEW: Any group manager can view this group's messages.
  *   `whoCanApproveMembers` (*type:* `String.t`, *default:* `nil`) - Specifies who can approve members who ask to join groups. This permission will be deprecated once it is merged into the new whoCanModerateMembers setting. Possible values are:  
      - ALL_MEMBERS_CAN_APPROVE 
      - ALL_MANAGERS_CAN_APPROVE 
      - ALL_OWNERS_CAN_APPROVE 
      - NONE_CAN_APPROVE
  *   `customRolesEnabledForSettingsToBeMerged` (*type:* `String.t`, *default:* `nil`) - Specifies whether the group has a custom role that's included in one of the settings being merged. This field is read-only and update/patch requests to it are ignored. Possible values are:  
      - true 
      - false
  *   `allowWebPosting` (*type:* `String.t`, *default:* `nil`) - Allows posting from web. Possible values are:  
      - true: Allows any member to post to the group forum. 
      - false: Members only use Gmail to communicate with the group.
  *   `allowGoogleCommunication` (*type:* `String.t`, *default:* `nil`) - Deprecated. Allows Google to contact administrator of the group.  
      - true: Allow Google to contact managers of this group. Occasionally Google may send updates on the latest features, ask for input on new features, or ask for permission to highlight your group. 
      - false: Google can not contact managers of this group.
  *   `messageDisplayFont` (*type:* `String.t`, *default:* `nil`) - Deprecated. The default message display font always has a value of "DEFAULT_FONT".
  *   `whoCanLeaveGroup` (*type:* `String.t`, *default:* `nil`) - Permission to leave the group. Possible values are:  
      - ALL_MANAGERS_CAN_LEAVE 
      - ALL_MEMBERS_CAN_LEAVE 
      - NONE_CAN_LEAVE
  *   `email` (*type:* `String.t`, *default:* `nil`) - The group's email address. This property can be updated using the Directory API. Note: Only a group owner can change a group's email address. A group manager can't do this.
      When you change your group's address using the Directory API or the control panel, you are changing the address your subscribers use to send email and the web address people use to access your group. People can't reach your group by visiting the old address.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the group. This property value may be an empty string if no group description has been entered. If entered, the maximum group description is no more than 300 characters.
  *   `whoCanContactOwner` (*type:* `String.t`, *default:* `nil`) - Permission to contact owner of the group via web UI. Possible values are:  
      - ALL_IN_DOMAIN_CAN_CONTACT 
      - ALL_MANAGERS_CAN_CONTACT 
      - ALL_MEMBERS_CAN_CONTACT 
      - ANYONE_CAN_CONTACT
  *   `whoCanModerateMembers` (*type:* `String.t`, *default:* `nil`) - Specifies who can manage members. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `includeInGlobalAddressList` (*type:* `String.t`, *default:* `nil`) - Enables the group to be included in the Global Address List. For more information, see the help center. Possible values are:  
      - true: Group is included in the Global Address List. 
      - false: Group is not included in the Global Address List.
  *   `spamModerationLevel` (*type:* `String.t`, *default:* `nil`) - Specifies moderation levels for messages detected as spam. Possible values are:  
      - ALLOW: Post the message to the group. 
      - MODERATE: Send the message to the moderation queue. This is the default. 
      - SILENTLY_MODERATE: Send the message to the moderation queue, but do not send notification to moderators. 
      - REJECT: Immediately reject the message.
  *   `kind` (*type:* `String.t`, *default:* `groupsSettings#groups`) - The type of the resource. It is always groupsSettings#groups.
  *   `whoCanDeleteTopics` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete topics. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanMarkFavoriteReplyOnOwnTopic` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a post for a topic they started as a favorite reply. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanUnmarkFavoriteReplyOnAnyTopic` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unmark any post from a favorite reply. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanTakeTopics` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to take topics in a forum. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `showInGroupDirectory` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanDiscoverGroup setting. Allows the group to be visible in the Groups Directory. Possible values are:  
      - true: All groups in the account are listed in the Groups directory. 
      - false: All groups in the account are not listed in the directory.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the group, which has a maximum size of 75 characters.
  *   `whoCanPostMessage` (*type:* `String.t`, *default:* `nil`) - Permissions to post messages. Possible values are:  
      - NONE_CAN_POST: The group is disabled and archived. No one can post a message to this group.  
      - When archiveOnly is false, updating whoCanPostMessage to NONE_CAN_POST, results in an error. 
      - If archiveOnly is reverted from true to false, whoCanPostMessages is set to ALL_MANAGERS_CAN_POST.  
      - ALL_MANAGERS_CAN_POST: Managers, including group owners, can post messages. 
      - ALL_MEMBERS_CAN_POST: Any group member can post a message. 
      - ALL_OWNERS_CAN_POST: Only group owners can post a message. 
      - ALL_IN_DOMAIN_CAN_POST: Anyone in the account can post a message.  
      - ANYONE_CAN_POST: Any Internet user who outside your account can access your Google Groups service and post a message. Note: When whoCanPostMessage is set to ANYONE_CAN_POST, we recommend the messageModerationLevel be set to MODERATE_NON_MEMBERS to protect the group from possible spam.
  *   `whoCanViewMembership` (*type:* `String.t`, *default:* `nil`) - Permissions to view membership. Possible values are:  
      - ALL_IN_DOMAIN_CAN_VIEW: Anyone in the account can view the group members list.
      If a group already has external members, those members can still send email to this group.
       
      - ALL_MEMBERS_CAN_VIEW: The group members can view the group members list. 
      - ALL_MANAGERS_CAN_VIEW: The group managers can view group members list.
  *   `messageModerationLevel` (*type:* `String.t`, *default:* `nil`) - Moderation level of incoming messages. Possible values are:  
      - MODERATE_ALL_MESSAGES: All messages are sent to the group owner's email address for approval. If approved, the message is sent to the group. 
      - MODERATE_NON_MEMBERS: All messages from non group members are sent to the group owner's email address for approval. If approved, the message is sent to the group. 
      - MODERATE_NEW_MEMBERS: All messages from new members are sent to the group owner's email address for approval. If approved, the message is sent to the group. 
      - MODERATE_NONE: No moderator approval is required. Messages are delivered directly to the group. Note: When the whoCanPostMessage is set to ANYONE_CAN_POST, we recommend the messageModerationLevel be set to MODERATE_NON_MEMBERS to protect the group from possible spam.
      When memberCanPostAsTheGroup is true, any message moderation settings on individual users or new members will not apply to posts made on behalf of the group.
  *   `whoCanMarkDuplicate` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic as a duplicate of another topic. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanAdd` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to add members. Possible values are:  
      - ALL_MEMBERS_CAN_ADD: Managers and members can directly add new members. 
      - ALL_MANAGERS_CAN_ADD: Only managers can directly add new members. this includes the group's owner. 
      - ALL_OWNERS_CAN_ADD: Only owners can directly add new members. 
      - NONE_CAN_ADD: No one can directly add new members.
  *   `includeCustomFooter` (*type:* `String.t`, *default:* `nil`) - Whether to include custom footer. Possible values are:  
      - true 
      - false
  *   `whoCanMoveTopicsIn` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move topics into the group or forum. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanLockTopics` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can prevent users from posting replies to topics. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanMarkFavoriteReplyOnAnyTopic` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark any other user's post as a favorite reply. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanDiscoverGroup` (*type:* `String.t`, *default:* `nil`) - Specifies the set of users for whom this group is discoverable. Possible values are:  
      - ANYONE_CAN_DISCOVER 
      - ALL_IN_DOMAIN_CAN_DISCOVER 
      - ALL_MEMBERS_CAN_DISCOVER
  *   `membersCanPostAsTheGroup` (*type:* `String.t`, *default:* `nil`) - Enables members to post messages as the group. Possible values are:  
      - true: Group member can post messages using the group's email address instead of their own email address. Message appear to originate from the group itself. Note: When true, any message moderation settings on individual users or new members do not apply to posts made on behalf of the group. 
      - false: Members can not post in behalf of the group's email address.
  *   `customReplyTo` (*type:* `String.t`, *default:* `nil`) - An email address used when replying to a message if the replyTo property is set to REPLY_TO_CUSTOM. This address is defined by an account administrator.  
      - When the group's ReplyTo property is set to REPLY_TO_CUSTOM, the customReplyTo property holds a custom email address used when replying to a message. 
      - If the group's ReplyTo property is set to REPLY_TO_CUSTOM, the customReplyTo property must have a text value or an error is returned.
  *   `whoCanPostAnnouncements` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can post announcements, a special topic type. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `favoriteRepliesOnTop` (*type:* `String.t`, *default:* `nil`) - Indicates if favorite replies should be displayed above other replies.  
      - true: Favorite replies will be displayed above other replies. 
      - false: Favorite replies will not be displayed above other replies.
  *   `sendMessageDenyNotification` (*type:* `String.t`, *default:* `nil`) - Allows a member to be notified if the member's message to the group is denied by the group owner. Possible values are:  
      - true: When a message is rejected, send the deny message notification to the message author.
      The defaultMessageDenyNotificationText property is dependent on the sendMessageDenyNotification property being true.
       
      - false: When a message is rejected, no notification is sent.
  *   `whoCanMarkNoResponseNeeded` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic as not needing a response. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `isArchived` (*type:* `String.t`, *default:* `nil`) - Allows the Group contents to be archived. Possible values are:  
      - true: Archive messages sent to the group. 
      - false: Do not keep an archive of messages sent to this group. If false, previously archived messages remain in the archive.
  *   `archiveOnly` (*type:* `String.t`, *default:* `nil`) - Allows the group to be archived only. Possible values are:  
      - true: Group is archived and the group is inactive. New messages to this group are rejected. The older archived messages are browseable and searchable.  
      - If true, the whoCanPostMessage property is set to NONE_CAN_POST.  
      - If reverted from true to false, whoCanPostMessages is set to ALL_MANAGERS_CAN_POST.  
      - false: The group is active and can receive messages.  
      - When false, updating whoCanPostMessage to NONE_CAN_POST, results in an error.
  *   `whoCanInvite` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to invite new members. Possible values are:  
      - ALL_MEMBERS_CAN_INVITE: Managers and members can invite a new member candidate. 
      - ALL_MANAGERS_CAN_INVITE: Only managers can invite a new member. This includes the group's owner. 
      - ALL_OWNERS_CAN_INVITE: Only owners can invite a new member. 
      - NONE_CAN_INVITE: No one can invite a new member candidate.
  *   `whoCanAddReferences` (*type:* `String.t`, *default:* `nil`) - Deprecated. This functionality is no longer supported in the Google Groups UI. The value is always "NONE".
  *   `whoCanModifyMembers` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateMembers setting. Specifies who can change group members' roles. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `replyTo` (*type:* `String.t`, *default:* `nil`) - Specifies who receives the default reply. Possible values are:  
      - REPLY_TO_CUSTOM: For replies to messages, use the group's custom email address.
      When the group's ReplyTo property is set to REPLY_TO_CUSTOM, the customReplyTo property holds the custom email address used when replying to a message. If the group's ReplyTo property is set to REPLY_TO_CUSTOM, the customReplyTo property must have a value. Otherwise an error is returned.
       
      - REPLY_TO_SENDER: The reply sent to author of message. 
      - REPLY_TO_LIST: This reply message is sent to the group. 
      - REPLY_TO_OWNER: The reply is sent to the owner(s) of the group. This does not include the group's managers. 
      - REPLY_TO_IGNORE: Group users individually decide where the message reply is sent. 
      - REPLY_TO_MANAGERS: This reply message is sent to the group's managers, which includes all managers and the group owner.
  *   `whoCanJoin` (*type:* `String.t`, *default:* `nil`) - Permission to join group. Possible values are:  
      - ANYONE_CAN_JOIN: Anyone in the account domain can join. This includes accounts with multiple domains. 
      - ALL_IN_DOMAIN_CAN_JOIN: Any Internet user who is outside your domain can access your Google Groups service and view the list of groups in your Groups directory. Warning: Group owners can add external addresses, outside of the domain to their groups. They can also allow people outside your domain to join their groups. If you later disable this option, any external addresses already added to users' groups remain in those groups. 
      - INVITED_CAN_JOIN: Candidates for membership can be invited to join.  
      - CAN_REQUEST_TO_JOIN: Non members can request an invitation to join.
  *   `enableCollaborativeInbox` (*type:* `String.t`, *default:* `nil`) - Specifies whether a collaborative inbox will remain turned on for the group. Possible values are:  
      - true 
      - false
  *   `whoCanAssistContent` (*type:* `String.t`, *default:* `nil`) - Specifies who can moderate metadata. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - MANAGERS_ONLY 
      - OWNERS_ONLY 
      - NONE
  *   `customFooterText` (*type:* `String.t`, *default:* `nil`) - Set the content of custom footer text. The maximum number of characters is 1,000.
  *   `whoCanBanUsers` (*type:* `String.t`, *default:* `nil`) - Specifies who can deny membership to users. This permission will be deprecated once it is merged into the new whoCanModerateMembers setting. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanDeleteAnyPost` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete replies to topics. (Authors can always delete their own posts). Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `whoCanHideAbuse` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can hide posts by reporting them as abuse. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  *   `primaryLanguage` (*type:* `String.t`, *default:* `nil`) - The primary language for group. For a group's primary language use the language tags from the G Suite languages found at G Suite Email Settings API Email Language Tags.
  *   `maxMessageBytes` (*type:* `integer()`, *default:* `nil`) - Deprecated. The maximum size of a message is 25Mb.
  *   `whoCanMoveTopicsOut` (*type:* `String.t`, *default:* `nil`) - Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move topics out of the group or forum. Possible values are:  
      - ALL_MEMBERS 
      - OWNERS_AND_MANAGERS 
      - OWNERS_ONLY 
      - NONE
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :whoCanApproveMessages => String.t(),
          :whoCanModerateContent => String.t(),
          :whoCanEnterFreeFormTags => String.t(),
          :allowExternalMembers => String.t(),
          :whoCanMakeTopicsSticky => String.t(),
          :whoCanUnassignTopic => String.t(),
          :defaultMessageDenyNotificationText => String.t(),
          :whoCanAssignTopics => String.t(),
          :whoCanModifyTagsAndCategories => String.t(),
          :whoCanViewGroup => String.t(),
          :whoCanApproveMembers => String.t(),
          :customRolesEnabledForSettingsToBeMerged => String.t(),
          :allowWebPosting => String.t(),
          :allowGoogleCommunication => String.t(),
          :messageDisplayFont => String.t(),
          :whoCanLeaveGroup => String.t(),
          :email => String.t(),
          :description => String.t(),
          :whoCanContactOwner => String.t(),
          :whoCanModerateMembers => String.t(),
          :includeInGlobalAddressList => String.t(),
          :spamModerationLevel => String.t(),
          :kind => String.t(),
          :whoCanDeleteTopics => String.t(),
          :whoCanMarkFavoriteReplyOnOwnTopic => String.t(),
          :whoCanUnmarkFavoriteReplyOnAnyTopic => String.t(),
          :whoCanTakeTopics => String.t(),
          :showInGroupDirectory => String.t(),
          :name => String.t(),
          :whoCanPostMessage => String.t(),
          :whoCanViewMembership => String.t(),
          :messageModerationLevel => String.t(),
          :whoCanMarkDuplicate => String.t(),
          :whoCanAdd => String.t(),
          :includeCustomFooter => String.t(),
          :whoCanMoveTopicsIn => String.t(),
          :whoCanLockTopics => String.t(),
          :whoCanMarkFavoriteReplyOnAnyTopic => String.t(),
          :whoCanDiscoverGroup => String.t(),
          :membersCanPostAsTheGroup => String.t(),
          :customReplyTo => String.t(),
          :whoCanPostAnnouncements => String.t(),
          :favoriteRepliesOnTop => String.t(),
          :sendMessageDenyNotification => String.t(),
          :whoCanMarkNoResponseNeeded => String.t(),
          :isArchived => String.t(),
          :archiveOnly => String.t(),
          :whoCanInvite => String.t(),
          :whoCanAddReferences => String.t(),
          :whoCanModifyMembers => String.t(),
          :replyTo => String.t(),
          :whoCanJoin => String.t(),
          :enableCollaborativeInbox => String.t(),
          :whoCanAssistContent => String.t(),
          :customFooterText => String.t(),
          :whoCanBanUsers => String.t(),
          :whoCanDeleteAnyPost => String.t(),
          :whoCanHideAbuse => String.t(),
          :primaryLanguage => String.t(),
          :maxMessageBytes => integer(),
          :whoCanMoveTopicsOut => String.t()
        }

  field(:whoCanApproveMessages)
  field(:whoCanModerateContent)
  field(:whoCanEnterFreeFormTags)
  field(:allowExternalMembers)
  field(:whoCanMakeTopicsSticky)
  field(:whoCanUnassignTopic)
  field(:defaultMessageDenyNotificationText)
  field(:whoCanAssignTopics)
  field(:whoCanModifyTagsAndCategories)
  field(:whoCanViewGroup)
  field(:whoCanApproveMembers)
  field(:customRolesEnabledForSettingsToBeMerged)
  field(:allowWebPosting)
  field(:allowGoogleCommunication)
  field(:messageDisplayFont)
  field(:whoCanLeaveGroup)
  field(:email)
  field(:description)
  field(:whoCanContactOwner)
  field(:whoCanModerateMembers)
  field(:includeInGlobalAddressList)
  field(:spamModerationLevel)
  field(:kind)
  field(:whoCanDeleteTopics)
  field(:whoCanMarkFavoriteReplyOnOwnTopic)
  field(:whoCanUnmarkFavoriteReplyOnAnyTopic)
  field(:whoCanTakeTopics)
  field(:showInGroupDirectory)
  field(:name)
  field(:whoCanPostMessage)
  field(:whoCanViewMembership)
  field(:messageModerationLevel)
  field(:whoCanMarkDuplicate)
  field(:whoCanAdd)
  field(:includeCustomFooter)
  field(:whoCanMoveTopicsIn)
  field(:whoCanLockTopics)
  field(:whoCanMarkFavoriteReplyOnAnyTopic)
  field(:whoCanDiscoverGroup)
  field(:membersCanPostAsTheGroup)
  field(:customReplyTo)
  field(:whoCanPostAnnouncements)
  field(:favoriteRepliesOnTop)
  field(:sendMessageDenyNotification)
  field(:whoCanMarkNoResponseNeeded)
  field(:isArchived)
  field(:archiveOnly)
  field(:whoCanInvite)
  field(:whoCanAddReferences)
  field(:whoCanModifyMembers)
  field(:replyTo)
  field(:whoCanJoin)
  field(:enableCollaborativeInbox)
  field(:whoCanAssistContent)
  field(:customFooterText)
  field(:whoCanBanUsers)
  field(:whoCanDeleteAnyPost)
  field(:whoCanHideAbuse)
  field(:primaryLanguage)
  field(:maxMessageBytes)
  field(:whoCanMoveTopicsOut)
end

defimpl Poison.Decoder, for: GoogleApi.GroupsSettings.V1.Model.Groups do
  def decode(value, options) do
    GoogleApi.GroupsSettings.V1.Model.Groups.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GroupsSettings.V1.Model.Groups do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
