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
DisplayDebugWarnings=disabled
DebugLogOnly=disabled
DebugToolbar=disabled
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
# How the search and advanced search page works,
# by default the search view does the search but it's
# possible to do the search in pure template code.
# Possible values are:
# default - The view code does the search and passes result to template
# template - The template does the search and passes the result back to the view code
SearchViewHandling=default
# Whether to log search stats or not
LogSearchStats=enabled
# The upper value for search limits fetched from HTTP Post variables
# This is needed to avoid users on a site to have ridiciously huge limits
MaximumSearchLimit=30
# Controls whether empty searches are allowed, by default it is disabled
# since those kind of searches will take a lot of resources.
# If empty searching is enabled you must make sure your template
# submits enough limitations to the search, if not expect to really
# slow down your site
AllowEmptySearch=disabled
# Enable or disable wildcard support for search. Note that enabling wildcard search
# might heavily influence the performance of the system.
EnableWildcard=false
# Set minimum number of characters in wildcard search
MinCharacterWildcard=3
# Only use stop words if total objects is greater than StopWordThresholdValue
StopWordThresholdValue=100
# Do not search words which are present in more than StopWordThresholdPercent % of total objects
StopWordThresholdPercent=60
# Controls whether objects are indexed when they are published, or delayed
# and processed later by a cronjob, can be set class based via 'classbased'
# In this case DelayedIndexingClassList should be set with class identifiers
DelayedIndexing=disabled
# List of class identifiers to use delayed indexing with.
DelayedIndexingClassList[]

[UserSettings]
# The possibility to deny login after MaxNumberOfFailedLogin failed login attempts.
# Max number of failed login attempts.
# If the max number is '0' the possibility will be disabled
MaxNumberOfFailedLogin=0
# An array with IP addresses or networks which will be always allowed to login after a few failed login attempts.
TrustedIPList[]
# If true and failed login attempts of current user execeed MaxNumberOfFailedLogin the user will get a message.
ShowMessageIfExceeded=false

# Minimum password length
MinPasswordLength=3
# If true it will automatically generate a password if it is empty
# and email it to the user.
GeneratePasswordIfEmpty=true
GeneratePasswordLength=6
# The ID of the anonymous user, this user will
# be used for everyone who is not logged in.
AnonymousUserID=10
# Where to store newly self registered users
DefaultUserPlacement=12
# Which section to place newly self registered users
# (Using 0 means that the user will get the section ID
#  from its new location)
DefaultSectionID=0
# What kind of feedback is sent back to the site for newly created
# users. Use a semi-colon separated list of feedback types.
# Only email is supported nativly, set to blank to disable.
# Example on setting up custom feedback type:
# 'registrationFeedback' function will be used on the class, look in
# kernel/user/register.php for how the email code is implemented!
#[RegistrationFeedback_<custom_type>]
#Class=<custom_type_class_name>
##File is optional, autoload will be used if not set
#File=<custom_type_file_path>
#
RegistrationFeedback=email
# Where to send email of newly registered users if no
# email_receiver is returned by user/registrationfeedback.tpl
RegistrationEmail=
# Type of verification for user registration, email is only
# type supported nativly, set to blank to disable.
# Example on how to set up custom verification:
# 'verifyUser' function will be used on the class, look in
# kernel/user/register.php for how the email code is implemented!
# return value of function decides if user mail should be sent or not.
#[VerifyUserType_<custom_type>]
#Class=<custom_type_class_name>
##File is optional, autoload will be used if not set
#File=<custom_type_file_path>

VerifyUserType=email
# If set to enabled, user password would be send in the registration email
# This password WON'T be stored in plain text
PasswordInRegistrationEmail=disabled
# Which content class to use for user creation
UserClassID=4
# Which content class to use for user group creation
UserGroupClassID=3
# Which class group that has user classes, controls which classes
# is shown on the user navigation part. If empty all classes are used.
UserClassGroupID=2
# Which user is considered the creator
UserCreatorID=14
# Use either md5_password, md5_user, md5_site or plaintext
# md5_password generates password hash from password only.
# md5_user generates password hash from user and password.
# md5_site generates password hash from site, user and password
# plaintext does not generate a hash but has the password as it is, this is not
# recommended since it is a huge security risc.
# note: password hashes generated with md5_site will not work after
#       changing the site name.
HashType=md5_site
# What SiteName should be used when hashing the user_password
# with the 'md5_site' HashType
SiteName=newscenter.datadelenhc.se
# true means update hash to HashType if it differs when logging in
# This is useful if you're upgrading from an older eZ Publish site
# or another system that uses mysql as password type, it will then
# update the hash to whather is set.
UpdateHash=true
# Authenticate match, a list of authenticate fields to use
# Available are login and email
AuthenticateMatch=login;email
# Controls whether a unique email is required for all users,
# if set to true and email is set in AuthenticateMatch then only
# one email address instance is allowed on the site.
# Set to false to disable it
RequireUniqueEmail=true
# since 4.5, Controls whether users are required to confirm their emails
# If set to true, users must retype their emails when registering
# or editing their profiles
RequireConfirmEmail=false
# Controls whether special characters are allowed in passwords in additional to
# characters in the range a-z, A-Z and 0-9.
UseSpecialCharacters=false

# Custom validation of user login name
# Will only affect new users, and existing users when they edit their credentials
UserNameValidationRegex[]
UserNameValidationErrorText[]
DefaultUserNameValidationErrorText=User login name did not validate!

# Examples of validation
#UserNameValidationRegex[sw]=/^\s/
#UserNameValidationErrorText[sw]=The username cannot start with a whitespace.
#UserNameValidationRegex[ew]=/\s$/
#UserNameValidationErrorText[ew]=The username cannot end with a whitespace.
#UserNameValidationRegex[rw]=/\s+/
#UserNameValidationErrorText[rw]=The username cannot contain repeated whitespace.
#UserNameValidationRegex[lb]=/\n|\r/
#UserNameValidationErrorText[lb]=The username cannot contain line breaks.
#UserNameValidationRegex[t]=/\t/
#UserNameValidationErrorText[t]=The username cannot contain tabs.

# Alternative example only allowing 'word' charthers
#UserNameValidationRegex[w]=/\W/
#UserNameValidationErrorText[w]=The username can only contain a-z, digits or underline.
# Or
#UserNameValidationRegex[wh]=/[^A-Za-z0-9_-]/
#UserNameValidationErrorText[wh]=The username can only contain a-z, digits, underline or hyphen.

# While testing add this at the end, just remember to remove it when your done..
#UserNameValidationRegex[test]=/\w/
#UserNameValidationErrorText[test]=The username seems to be ok!

# Which url to redirect after a logout
LogoutRedirect=/user/login
# Use the LastAccessURI to decide where to redirect the user on logout
RedirectOnLogoutWithLastAccessURI=disabled
# Text attribute of class 'User' that contains URI where to redirect
# the user to after login.
#LoginRedirectionUriAttribute[user]=front_page_uri
# Text attribute of class 'User group' that contains URI where
# to redirect the user belonging to this group to after login.
#LoginRedirectionUriAttribute[group]=front_page_uri

LoginHandler[]=standard
#LoginHandler[]=LDAP
#LoginHandler[]=textfile

# Defines the available single sign on handlers.
SingleSignOnHandlerArray[]

[SiteAccessSettings]
# Set to true if you want to force VirualHost mode (with RewriteRules in apache)
# If this is set to true nonVirtualHost mode will not work correctly
ForceVirtualHost=true
# Set to true if you want the setup system to be activated
CheckValidity=false
# Set the true if you don't want anonymous access to your site
RequireUserLogin=false

# A list over current active siteaccesses
AvailableSiteAccessList[]

# A list of related siteaccesses sharing the same database
RelatedSiteAccessList[]

# A list of module or module/views that don't require user login
AnonymousAccessList[]
AnonymousAccessList[]=user/register
AnonymousAccessList[]=user/success
AnonymousAccessList[]=user/activate
AnonymousAccessList[]=user/forgotpassword

# An array of access types which are tried, possible entries are: host, host_uri, uri, port and servervar
MatchOrder=servervar

# MatchOrder : servervar
# Set name of server variable used to match a siteaccess
ServerVariableName=SITEACCESS

# Wheter to add siteaccess to the url if current siteaccess
# is the same as default siteaccess. Changing this setting will
# require clearing the cache.
#
# This setting also works with host_uri matching removing uri part
# from url if it's default siteacces. In this case, make sure
# host name without url part goes to same siteaccess in your
# match order chain.
#
# For instance if the default siteaccess is 'en' and you enable
# this you can access the siteacccess with 'index.php' instead of
# 'index.php/en/'.
RemoveSiteAccessIfDefaultAccess=disabled

# Hides this part from the start of the url alias
# If you use this setting, you also need to use the PathPrefix setting in logfile.ini.
PathPrefix=

# Which URLs to exclude from being affected by PathPrefix setting.
# URLs containing the specified texts after siteaccess name will not be affected by PathPrefix
PathPrefixExclude[]
#PathPrefixExclude[]=media
#PathPrefixExclude[]=users

# Whether to show hidden nodes
# If set to false, user is not able to see any hidden nodes
# Should be overriden for particular siteaccesses
ShowHiddenNodes=false

[RoleSettings]
EnableCaching=true
# A list of modules to omit policy checking on,
# You should add 'role' to the list if you loose
# access to the role module
# You can also specify views by adding a / and the viewname
PolicyOmitList[]
PolicyOmitList[]=user/login
PolicyOmitList[]=user/logout
PolicyOmitList[]=user/register
PolicyOmitList[]=user/activate
PolicyOmitList[]=user/success
PolicyOmitList[]=user/forgotpassword
PolicyOmitList[]=layout
PolicyOmitList[]=manual
PolicyOmitList[]=ezinfo
PolicyOmitList[]=paypal/notify_url
PolicyOmitList[]=switchlanguage
# This is a fake omission: we need a manual policy check, therefore implemented directly in oauth/authorize.php
PolicyOmitList[]=oauth/authorize
# Should we try to show reason for access denied in view
ShowAccessDeniedReason=disabled

[SiteAccessRules]
Rules[]
# Set access policy to allowed
# Rules[]=access;enable
# # Special syntax which means any module
# # This means that for now all modules are enabled
# Rules[]=moduleall
# # Set policy to denied
Rules[]=access;disable
# # If content/search module use current policy (denied)
Rules[]=user/register
Rules[]=user/activate
Rules[]=user/success
Rules[]=ezinfo

[DesignSettings]
# The standard design, is used as fallback design
# if the element is not in the sitedesign
StandardDesign=standard
# The design of the site
SiteDesign=admin
# AdditionalSiteDesignArray contains an array
# of sitedesigns. These sitedesigns will be used
# if the design was not found in the main
# sitedesign. StandardDesign is the fallback design.
AdditionalSiteDesignList[]

# Whether to cache location of design directories
# Please note that if you use Database clustering :
# file.ini/[ClusteringSettings]/FileSettings=eZDBFileHandler
# the cache of design locations will automatically disabled
DesignLocationCache=enabled

[RegionalSettings]
# The locale for your site
Locale=swe-SE
# Set this if the http locale in the locale is wrong
HTTPLocale=
# Set this if you want to run the entire PHP system in a given
# locale, this means that PHP will be locale aware when dealing
# with strings (e.g making characters in a string into lowercase). (C is a
# special locale meaning 7-bit ASCII). Examples for this setting include
# "german", "de_DE.ISO-8859-1"; depending on your operating system.
SystemLocale=
# The default language for content objects
# Note: Changing this can have catastrophic consequences
#       since there might not be any content objects with
#       the selected language. Instead the content/translations
#       page should be used for adding/removing translations.
ContentObjectLocale=swe-SE
# If enabled, ShowUntranslatedObjects will force showing the objects
# existing in other languages than those specified in SiteLanguageList
ShowUntranslatedObjects=disabled
# Prioritized list of languages. Only objects existing in these
# languages will be shown (unless ShowUntranslatedObjects is enabled).
# If an object exists in more languages, that one which is first in
# SiteLanguageList will be used to render it.
SiteLanguageList[]
# Controls how xml is stored in content objects.
# disabled - Store with utf8
# enabled  - Store with current charset
# if any other text is entered it is assumed to be a charset and will be used
ContentXMLCharset=enabled
# Use either disabled to disable all text translation (faster) or enabled.
# Text translation is automatically disabled when the Locale is set to eng-GB
TextTranslation=enabled
TranslationCache=enabled
# Translation cache files will be stored in the directory located outside of the
# siteaccess VarDir. Empty value disables sharing of translation cache.
# Useful if you want to share translation cache between siteaccesses that
# only differes by content, db and var directory.
SharedTranslationCacheDir=
# Sets if modified time should be checked or not on ts files when checking
# if translation cache is valid
TranslationCheckMTime=enabled
# Use either enabled to see which locale files are loaded or disabled to supress debug
Debug=disabled
# By enabling development mode all untranslated texts will be translated
# using the bork rules.
# See lib/ezi18n/classes/ezborktranslator.php for more information.
DevelopmentMode=disabled
TranslationRepository=share/translations/
TranslationExtensions[]

# NOTE: The LanguageSwitcher settings are not frozen, meaning they might still change.
# The class which is used in the language switcher module to forward users to
# selected translation siteaccesses.
LanguageSwitcherClass=ezpLanguageSwitcher
# Example mapping between translation siteaccesses and the name to use for the
# language switcher link, e.g. the name which will be used when making links to
# these siteaccesses.
# Example: TranslationSA[<name of siteaccess>]=<name of language switcher link, pointing to this siteaccess>
# TranslationSA[]
# TranslationSA[eng]=English
# TranslationSA[nor]=Norwegian
# TranslationSA[fre]=French

# Example mapping between languages and siteaccess, mapping is done by convention if not defined
# like eg: eng-GB => eng
# In both cases sa name needs to be present in [SiteAccessSettings]\RelatedSiteAccessList[]
# Example: LanguageSA[<language>]=<name of siteaccess>
# LanguageSA[]
# LanguageSA[eng-GB]=site1_eng
# LanguageSA[nor-NB]=site1_nor
# LanguageSA[fre-FR]=site1_fre

[FileSettings]
# The directory eZ Publish should use when creating temporary files.
# e.g when creating an image variation
TemporaryDir=/tmp/
# Permission for temporary files, setting it to 0777 means that anyone
# can read and write the files and can be considered a security risk.
# It's preferred to use 0770 and make sure the web server has correct
# user/group access.
TemporaryPermissions=0777
# Where to place new files for storage, it's relative to var directory
StorageDir=storage
# Permission for storage directories, setting it to 0777 means that anyone
# can read and write the directories and can be considered a security risk.
# It's preferred to use 0770 and make sure the web server has correct
# user/group access.
StorageDirPermissions=0777
# Permission for storage files, setting it to 0666 means that anyone
# can read and write the files and can be considered a security risk.
# It's preferred to use 0660 and make sure the web server has correct
# user/group access.
StorageFilePermissions=0666
# Permission for log files, setting it to 0666 means that anyone
# can read and write the files and can be considered a security risk.
# It's preferred to use 0660 and make sure the web server has correct
# user/group access.
LogFilePermissions=0666
# Directory depth for storing files, this means that it will create
# directories out of the first n characters to make sure not too
# many files are placed in one directory. For instance a file name
# newfile.png will be placed in n/e/w/newfile.png.
DirDepth=3

[TemplateSettings]
# A list of directories to look for eztemplateautoload.php files
# These files will be used to automatically load in template functions and operators
# You can new ones if you create custom template code.
AutoloadPathList[]
AutoloadPathList[]=lib/eztemplate/classes/
AutoloadPathList[]=kernel/common/
AutoloadPathList[]=lib/ezpdf/classes/
AutoloadPathList[]=kernel/private/eztemplate/
# A list of extensions which have template autoloads.
# Only specify the extension name, not the path.
# The extension must contain a subdirectory called autoloads.
ExtensionAutoloadPath[]
# Enabled to see which template files are loaded or disabled to supress debug
# Warning: Will add debug xhtml comments to your source code, including mails!
# Note: No debug on templates starting with <!DOCTYPE to not trigger quirks mode!
Debug=disabled
# If enabled will add code to display the template name in the browser
# If Debug is disabled then nothing happens
ShowXHTMLCode=disabled
# Whether to show debug of functions and operators when
# processing nodes.
# This only meant for kernel developers to check which
# operators and functions are called.
# Note: Will only work when template compiler is off
ShowMethodDebug=disabled
# If enabled will add a table with templates used to render a page.
# DebugOutput should be enabled too.
ShowUsedTemplates=disabled
# Determines whether the internal node tree should be cached, by enabling this the loading
# and parsing of templates is significantly reduced.
NodeTreeCaching=disabled
# Determines whether the templates should be compiled to PHP code, by enabling this the loading
# and parsing of templates is omitted and template processing is significantly reduced.
# Note: The first time the templates are compiled it will take a long time, use the
#       bin/php/eztc.php script to prepare all your templates.
TemplateCompile=enabled
# If you share compiled templates with other site accesses
ShareCompiledTemplates=disabled
# Where to store shared compiled templates
SharedCompiledTemplatesDir=
# Controls whether further optimizations should be performed on compiled
# templates
TemplateOptimization=enabled
# Controls whether to include formatting in compiled templates or not.
UseFormatting=disabled
# Controls all template base caching mechanisms, if disabled they will never be
# used.
# The elements currently controlled by this is:
# - cache-block
TemplateCache=enabled
# Controls whether expired cache-blocks with 'subtree_expiry' parameter will
# be removed from disk immediately or not.
# If enabled it should increase performance of large sites but you should remove
# expired caches manually or using cronjob 'cronjobs/subtreeexpirycleanup.php'.
# Since 4.6, this cronjob is not activated by default.
DelayedCacheBlockCleanup=disabled
# Controls whether compiled templates should be stored gzip compressed on disk.
# This drastically reduces disk usage.
TemplateCompression=disabled
# Controls if development is enabled or not.
# When enabled the system will perform more checks like modification time on
# compiled vs source file and will reduce need for clearing template compiled
# files.
# Note: Live sites should not have this enabled since it increases file access
#       and can be slower.
# Note: When switching this setting the template compiled files must be cleared.
DevelopmentMode=disabled

[ContentSettings]
# Whether to use view caching or not
ViewCaching=enabled
# A list of viewmodes which will be cached
CachedViewModes=full;sitemap;pdf

[MailSettings]
# The type of transport for emails, can be either: sendmail, SMTP or file
# Window users should probably use SMTP
# For debug purposes you can use file for sending mail to a log file
Transport=smtp
# A list of possible handlers for sending mails, use the setting Transport to specify which one to use
TransportAlias[]
TransportAlias[file]=eZFileTransport
TransportAlias[sendmail]=eZSendmailTransport
TransportAlias[smtp]=eZSMTPTransport
# Configuration for SMTP
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
CacheTime=1200

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
# Use 'ReadonlySettingList' to set read-only settings.
# usage:
# for specific setting:
#   ini-filename/section_name/setting_name
# for all settings in section:
#   ini-filename/section_name/*
# for all settings in ini-file:
#   ini-filename/*
ReadonlySettingList[]
ReadonlySettingList[]=template.ini/PHP/PHPOperatorList
ReadonlySettingList[]=image.ini/ImageMagick/ExecutablePath
ReadonlySettingList[]=image.ini/ImageMagick/Executable

# Dynamic ini template operator
# Changes global setting for ezini and ezini_hasvariable template
# operators for the default setting of 'dynamic' parameter
# When enabled these calls are not compiled as ini values into
# templates, but read dynamically
# Note: only read during template compilation
DynamicTemplateMode=disabled

[RegionalSettings]
TranslationSA[]
TranslationSA[swe]=Swe

  
*/ ?>