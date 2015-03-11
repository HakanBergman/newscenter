<?php /* #?ini charset="utf-8"?


[ExtensionSettings]
ActiveExtensions[]
ActiveExtensions[]=ezjscore
ActiveExtensions[]=ezoe
ActiveExtensions[]=ezformtoken
ActiveExtensions[]=ezstarrating
ActiveExtensions[]=ezgmaplocation
ActiveExtensions[]=ezdemo
ActiveExtensions[]=ezwt
ActiveExtensions[]=ezflow
ActiveExtensions[]=ezie
ActiveExtensions[]=ezodf
ActiveExtensions[]=ezprestapiprovider
ActiveExtensions[]=ezmultiupload
ActiveExtensions[]=eztags
ActiveExtensions[]=ezautosave

[DatabaseSettings]
DatabaseImplementation=ezmysqli
Server=localhost
Port=
User=NewsCenter
Password=test
Database=NewsCenter
Charset=
Socket=disabled
UsePersistentConnection=disabled
Transactions=enabled

# Alias for implementations
ImplementationAlias[]
ImplementationAlias[mysql]=eZMySQLiDB
ImplementationAlias[mysqli]=eZMySQLiDB
ImplementationAlias[postgresql]=eZPostgreSQLDB
ImplementationAlias[ezmysql]=eZMySQLiDB
ImplementationAlias[ezmysqli]=eZMySQLiDB
ImplementationAlias[ezpostgresql]=eZPostgreSQLDB
ImplementationAlias[pgsql]=eZPostgreSQLDB

[Session]
Handler=ezpSessionHandlerPHP
SessionNameHandler=custom
SessionNamePrefix=eZSESSID
SessionNamePerSiteAccess=enabled
SessionTimeout=259200
RememberMeTimeout=259200
ActivityTimeout=259200

CookieTimeout=259200

BasketCleanup=cronjob
BasketCleanupTime=120
BasketCleanupIdleTime=60
BasketCleanupFetchLimit=3000
BasketCleanupAverageFrequency=10

[DebugSettings]
DebugOutput=disabled
AlwaysLog[]
AlwaysLog[]=error
ScriptDebugOutput=disabled
DebugByIP=disabled
DebugIPList[]
DebugByUser=disabled
DebugUserIDList[]
DebugRedirection=disabled
DisplayDebugWarnings=enabled
DebugLogOnly=disabled
DebugToolbar=enabled
DisplayIncludedFiles=disabled

[URLTranslator]
Translation=enabled
TranslatableSystemUrls=enabled
WordSeparator=dash
TransformationGroup=urlalias
UrlAliasNameLimit=255
WildcardTranslation=enabled
MaximumWildcardIterations=20
NodeTranslation=enabled
FilterClasses[]
FilterClasses[]=eZURLAliasFilterAppendNodeID

[SiteSettings]
LoginPage=custom
SSLPort=443
64bitCompatibilityMode=enabled

[SearchSettings]
SearchEngine=eZSearchEngine
SearchViewHandling=default
LogSearchStats=enabled
MaximumSearchLimit=30
AllowEmptySearch=disabled
EnableWildcard=false
MinCharacterWildcard=3
StopWordThresholdValue=100
StopWordThresholdPercent=60
DelayedIndexing=disabled
DelayedIndexingClassList[]

[UserSettings]
MaxNumberOfFailedLogin=0
TrustedIPList[]
ShowMessageIfExceeded=false

# Minimum password length
MinPasswordLength=3
GeneratePasswordIfEmpty=true
GeneratePasswordLength=6
AnonymousUserID=10
DefaultUserPlacement=12
DefaultSectionID=0
RegistrationFeedback=email
VerifyUserType=email
PasswordInRegistrationEmail=enabled
UserClassID=4
UserGroupClassID=3
UserClassGroupID=2
UserCreatorID=14
HashType=md5_site
SiteName=newscenter.datadelenhc.se
UpdateHash=true
AuthenticateMatch=login;email
RequireUniqueEmail=true
RequireConfirmEmail=false
UseSpecialCharacters=false
UserNameValidationRegex[]
UserNameValidationErrorText[]
DefaultUserNameValidationErrorText=User login name did not validate!

# Examples of validation
UserNameValidationRegex[sw]=/^\s/
UserNameValidationErrorText[sw]=The username cannot start with a whitespace.
UserNameValidationRegex[ew]=/\s$/
UserNameValidationErrorText[ew]=The username cannot end with a whitespace.
UserNameValidationRegex[rw]=/\s+/
UserNameValidationErrorText[rw]=The username cannot contain repeated whitespace.
UserNameValidationRegex[lb]=/\n|\r/
UserNameValidationErrorText[lb]=The username cannot contain line breaks.
UserNameValidationRegex[t]=/\t/
UserNameValidationErrorText[t]=The username cannot contain tabs.
# Alternative example only allowing 'word' charthers
UserNameValidationRegex[wh]=/[^A-Za-z0-9_-]/
UserNameValidationErrorText[wh]=The username can only contain a-z, digits, underline or hyphen.

# Which url to redirect after a logout
LogoutRedirect=/
RedirectOnLogoutWithLastAccessURI=disabled
LoginRedirectionUriAttribute[user]=front_page_uri
LoginRedirectionUriAttribute[group]=front_page_uri
LoginHandler[]=standard


[SiteAccessSettings]
ForceVirtualHost=true
CheckValidity=false
RequireUserLogin=false

# A list over current active siteaccesses
AvailableSiteAccessList[]
AvailableSiteAccessList[]=newscenter.drumedar.net
AvailableSiteAccessList[]=www.maltimportoren.se
AvailableSiteAccessList[]=webbcenter.datadelenhc.se
AvailableSiteAccessList[]=ezdemo_site_clean_admin

# A list of related siteaccesses sharing the same database
RelatedSiteAccessList[]
RelatedSiteAccessList[]=ezdemo_site_clean_admin
RelatedSiteAccessList[]=newscenter.drumedar.net
RelatedSiteAccessList[]=webbcenter.datadelenhc.se
RelatedSiteAccessList[]=www.maltimportoren.se

# A list of module or module/views that don't require user login
AnonymousAccessList[]
AnonymousAccessList[]=user/forgotpassword

# An array of access types which are tried, possible entries are: host, host_uri, uri, port and servervar
MatchOrder=host

# MatchOrder : host
# Use either disabled, map, element, text or regexp
HostMatchType=map
HostMatchElement=0
HostMatchRegexp=^(.+)\.example\.com$
HostMatchRegexpItem=1

HostMatchMapItems[]=maltimportoren.datadelenhc.com;www.maltimportoren.se
HostMatchMapItems[]=webbcenter.datadelenhc.se;webbcenter.datadelenhc.se
HostMatchMapItems[]=maltimportoren.se;www.maltimportoren.se
HostMatchMapItems[]=www.maltimportoren.se;www.maltimportoren.se
HostMatchMapItems[]=admin.maltimportoren.se;newscenter.drumedar.net
HostMatchMapItems[]=newscenter.drumedar.net;newscenter.drumedar.net
HostMatchMapItems[]=admin.newscenter.drumedar.net;ezdemo_site_clean_admin

[RoleSettings]
EnableCaching=true
PolicyOmitList[]
PolicyOmitList[]=user/login
PolicyOmitList[]=user/logout
PolicyOmitList[]=user/forgotpassword
PolicyOmitList[]=layout
PolicyOmitList[]=manual
PolicyOmitList[]=oauth/authorize
ShowAccessDeniedReason=disabled

DesignLocationCache=enabled

[FileSettings]
TemporaryDir=/tmp/
TemporaryPermissions=0777
StorageDir=storage
StorageDirPermissions=0777
StorageFilePermissions=0666
LogFilePermissions=0666
DirDepth=3

[TemplateSettings]
Debug=disabled
ShowXHTMLCode=disabled
ShowMethodDebug=disabled
ShowUsedTemplates=enabled
NodeTreeCaching=disabled
TemplateCompile=disabled
TemplateOptimization=disabled
UseFormatting=disabled
TemplateCache=enabled
DelayedCacheBlockCleanup=enabled
TemplateCompression=enabled
DevelopmentMode=disabled

[ContentSettings]
ViewCaching=enabled
CachedViewModes=full;sitemap;pdf
EditDirtyObjectAction=usecurrent

[MailSettings]
Transport=smtp
TransportAlias[]
TransportAlias[file]=eZFileTransport
TransportAlias[sendmail]=eZSendmailTransport
TransportAlias[smtp]=eZSMTPTransport
TransportServer=smtp.quicknet.se
# Connection type in SMTP: <empty>(no encryption)|ssl|sslv2|sslv3|tls
TransportConnectionType=
# Default SMTP port is 25, default Secure SMTP port(SSL,TLS) is 465
TransportPort=25
TransportUser=
TransportPassword=

# Which charset are allowed to send directly, those that do not match
# is converted to OutputCharset before being sent.
AllowedCharsets[]
AllowedCharsets[]=utf-8
AllowedCharsets[]=iso-8859-1
# Which charset to convert emails to if they are not in correct format
OutputCharset=utf-8
# Content type of mails, for instance text/plain or text/html
ContentType=text/html
HeaderLineEnding=auto
DebugSending=disabled
ExcludeHeaders[]

[ShopSettings]
# This settings controls when the basket is cleared.
# It can contain the following values:
# - disabled - Means that the basket is cleared when the shop/checkout
#              trigger is done. In practice this means when a user
#              has payed the product and payment system is finished.
#              This is the default value since it means the user can
#              cancel the order and go back to the shop with the
#              basket still intact.
# - enabled - Means to clear the basket as soon as the user clicks
#             confirm in the shop/confirmorder trigger. This may
#             needed by some payment system, check the documentation
#             for the system to see if this needs to be enabled.
#             The inpact on the users is that the basket will not be
#             available when the payment is cancelled.
#
# To put it in context the entire checkout process consists of these triggers:
# - shop/confirmorder - The user shown the total price with shipping
#                       and other calculations. When the user clicks
#                       confirm the shop/checkout trigger is started.
# - shop/checkout     - Starts a new temporary order and runs any payment
#                       methods (or other workflows). Once it is done
#                       the order is activated and the basket is cleared.
ClearBasketOnCheckout=enabled
# This settings is used when a user logs out.
# It can contain the following values:
# - disabled - Means that the basket will NOT be cleared when a user logs out.
# - enabled  - Means that the basket will be cleared when a user logs out.
ClearBasketOnLogout=disabled
# Controls what happens after an item is added to the basket
# It can contain one of these entries:
# - basket - Redirect back to the basket to show the newly added item
# - reload - Redirect back to where the user was previously, this allows
#            the user to continue shopping.
RedirectAfterAddToBasket=reload

# Controls if we should send an order confirmation email to admin and the user or not
# when an order is completed and confirmed.
SendOrderEmail=enabled

# List of datatypes that should not expose their content through external calls (Ajax/REST)
DatatypeBlackListForExternal[]
DatatypeBlackListForExternal[]=ezuser

[OverrideSettings]
Cache=enabled

[RSSSettings]
# RSS import handler Extension settings
# Must be placed in <extension directory>/<active extension>/rss/ezrssimporthandler.php
ActiveExtensions[]

# List of numbers of objects being included in the RSS feed.
# This list is being shown in the RSS export edit admin interface.
NumberOfObjectsList[]
NumberOfObjectsList[]=5
NumberOfObjectsList[]=10
NumberOfObjectsList[]=20
NumberOfObjectsList[]=30
NumberOfObjectsList[]=40
NumberOfObjectsList[]=50
# Selected by default in the RSS export edit GUI.
NumberOfObjectsDefault=20

# Cache Time in Seconds
#
# The timespan a RSS feed is served from the cache in seconds.
# After the end of the timespan, the RSS feed is regenerated and
# again served from the cache.
#
# This means that changes to the content being fed show up
# after the maximum cache time at the latest.
#
# "CacheTime = 0" turns off cacheing.
CacheTime=0

# The list of available RSS versions.
AvailableVersionList[]
AvailableVersionList[]=1.0
AvailableVersionList[]=2.0
AvailableVersionList[]=ATOM
# Selected by default in the RSS export edit GUI.
DefaultVersion=2.0

[SSLZoneSettings]
# Enable/disable the SSL zones functionality.
SSLZones=disabled
# Content subtrees we must use SSL for.
# (currently, only content/view and content/edit respect this setting)
#
# Examples:
# SSLSubtrees[]=/news
# SSLSubtrees[]=/polls
SSLSubtrees[]
# Default access mode is plain HTTP.
# Define a view as 'ssl' to force HTTPS access mode for this view.
# If a view is defined as 'keep' then access mode is unknown
# for this view, and the previous access mode is kept.
#
# Examples:
# ModuleViewAccessMode[shop/add]=ssl
# ModuleViewAccessMode[shop/basket]=ssl
#
# Do not remove this line unless you know what you're doing:
ModuleViewAccessMode[]
ModuleViewAccessMode[content/*]=keep
ModuleViewAccessMode[layout/*]=keep

[TimeZoneSettings]
TimeZone="Europe/Stockholm"

[eZINISettings]
ReadonlySettingList[]
ReadonlySettingList[]=template.ini/PHP/PHPOperatorList
ReadonlySettingList[]=image.ini/ImageMagick/ExecutablePath
ReadonlySettingList[]=image.ini/ImageMagick/Executable

[RegionalSettings]
TranslationSA[]
TranslationSA[swe]=Swe

  
*/ ?>