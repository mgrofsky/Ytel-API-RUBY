# Getting started

Ytel API version 3

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build ytel.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install ytel-3.1.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Ytel-Ruby&workspaceName=Ytel-Ruby&projectName=ytel&gemName=ytel&gemVer=3.1.0)

## How to Use

The following section explains how to use the Ytel Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the Ytel gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'ytel', '~> 3.1.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Ytel-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = Ytel::YtelClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=Ytel&projectName=ytel&gemName=ytel&gemVer=3.1.0&initLine=client%2520%253D%2520YtelClient.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [WebRTCController](#web_rtc_controller)
* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [PhoneNumberController](#phone_number_controller)
* [TranscriptionController](#transcription_controller)
* [RecordingController](#recording_controller)
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [CallController](#call_controller)
* [CarrierController](#carrier_controller)
* [AddressController](#address_controller)
* [SubAccountController](#sub_account_controller)
* [AccountController](#account_controller)
* [UsageController](#usage_controller)
* [ShortCodeController](#short_code_controller)
* [PostCardController](#post_card_controller)
* [LetterController](#letter_controller)
* [AreaMailController](#area_mail_controller)

## <a name="web_rtc_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebRTCController") WebRTCController

### Get singleton instance

The singleton instance of the ``` WebRTCController ``` class can be accessed from the API Client.

```ruby
webRTC_controller = client.web_rtc
```

### <a name="create_token"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.create_token") create_token

> Ytel webrtc


```ruby
def create_token(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_sid |  ``` Required ```  | Your Ytel Account SID |
| auth_token |  ``` Required ```  | Your Ytel Token |
| username |  ``` Required ```  | WebRTC username authentication |
| password |  ``` Required ```  | WebRTC password authentication |


#### Example Usage

```ruby
collect = Hash.new

account_sid = 'account_sid'
collect['account_sid'] = account_sid

auth_token = 'auth_token'
collect['auth_token'] = auth_token

username = 'username'
collect['username'] = username

password = 'password'
collect['password'] = password


result = webRTC_controller.create_token(collect)

```


### <a name="check_funds"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.check_funds") check_funds

> TODO: Add a method description


```ruby
def check_funds(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_sid |  ``` Required ```  | Your Ytel Account SID |
| auth_token |  ``` Required ```  | Your Ytel Token |


#### Example Usage

```ruby
collect = Hash.new

account_sid = 'account_sid'
collect['account_sid'] = account_sid

auth_token = 'auth_token'
collect['auth_token'] = auth_token


result = webRTC_controller.check_funds(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance

The singleton instance of the ``` SharedShortCodeController ``` class can be accessed from the API Client.

```ruby
sharedShortCode_controller = client.shared_short_code
```

### <a name="view_template"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_template") view_template

> View a Shared ShortCode Template


```ruby
def view_template(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | The unique identifier for a template object |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

template_id = UUID.new
collect['template_id'] = template_id

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode_controller.view_template(collect)

```


### <a name="view_shared_shortcodes"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_shared_shortcodes") view_shared_shortcodes

> View a ShortCode Message


```ruby
def view_shared_shortcodes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

messagesid = 'messagesid'
collect['messagesid'] = messagesid

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode_controller.view_shared_shortcodes(collect)

```


### <a name="list_outbound_shared_shortcodes"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_outbound_shared_shortcodes") list_outbound_shared_shortcodes

> List ShortCode Messages


```ruby
def list_outbound_shared_shortcodes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

to = 'to'
collect['to'] = to

datesent = 'datesent'
collect['datesent'] = datesent


result = sharedShortCode_controller.list_outbound_shared_shortcodes(collect)

```


### <a name="list_inbound_shared_shortcodes"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_inbound_shared_shortcodes") list_inbound_shared_shortcodes

> List All Inbound ShortCode


```ruby
def list_inbound_shared_shortcodes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| datecreated |  ``` Optional ```  | Only list messages sent with the specified date |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

from = 'from'
collect['from'] = from

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

datecreated = 'Datecreated'
collect['datecreated'] = datecreated


result = sharedShortCode_controller.list_inbound_shared_shortcodes(collect)

```


### <a name="send_shared_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.send_shared_shortcode") send_shared_shortcode

> Send an SMS from a Ytel ShortCode


```ruby
def send_shared_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| data |  ``` Required ```  | format of your data, example: {companyname}:test,{otpcode}:1234 |
| method |  ``` Optional ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| message_status_callback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'shortcode'
collect['shortcode'] = shortcode

to = 'to'
collect['to'] = to

templateid = UUID.new
collect['templateid'] = templateid

response_type = 'json'
collect['response_type'] = response_type

data = 'data'
collect['data'] = data

method = Ytel::HttpActionEnum::GET
collect['method'] = method

message_status_callback = 'MessageStatusCallback'
collect['message_status_callback'] = message_status_callback


result = sharedShortCode_controller.send_shared_shortcode(collect)

```


### <a name="list_templates"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_templates") list_templates

> List Shortcode Templates by Type


```ruby
def list_templates(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| type |  ``` Optional ```  ``` DefaultValue ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| shortcode |  ``` Optional ```  | Only list templates of type |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

type = 'authorization'
collect['type'] = type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

shortcode = 'Shortcode'
collect['shortcode'] = shortcode


result = sharedShortCode_controller.list_templates(collect)

```


### <a name="view_keyword"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_keyword") view_keyword

> View a set of properties for a single keyword.


```ruby
def view_keyword(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| keywordid |  ``` Required ```  | The unique identifier of each keyword |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

keywordid = 'Keywordid'
collect['keywordid'] = keywordid

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode_controller.view_keyword(collect)

```


### <a name="list_keyword"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_keyword") list_keyword

> Retrieve a list of keywords associated with your Ytel account.


```ruby
def list_keyword(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

keyword = 'Keyword'
collect['keyword'] = keyword

shortcode = 140
collect['shortcode'] = shortcode


result = sharedShortCode_controller.list_keyword(collect)

```


### <a name="view_assignement"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_assignement") view_assignement

> The response returned here contains all resource properties associated with the given Shortcode.


```ruby
def view_assignement(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your Ytel account |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode_controller.view_assignement(collect)

```


### <a name="list_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_assignment") list_assignment

> Retrieve a list of shortcode assignment associated with your Ytel account.


```ruby
def list_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

shortcode = 'Shortcode'
collect['shortcode'] = shortcode


result = sharedShortCode_controller.list_assignment(collect)

```


### <a name="update_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.update_assignment") update_assignment

> TODO: Add a method description


```ruby
def update_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid shortcode to your Ytel account |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendly_name |  ``` Optional ```  | User generated name of the shortcode |
| callback_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| callback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |
| fallback_url_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

response_type = 'json'
collect['response_type'] = response_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

callback_url = 'CallbackUrl'
collect['callback_url'] = callback_url

callback_method = Ytel::HttpActionEnum::GET
collect['callback_method'] = callback_method

fallback_url = 'FallbackUrl'
collect['fallback_url'] = fallback_url

fallback_url_method = Ytel::HttpActionEnum::GET
collect['fallback_url_method'] = fallback_url_method


result = sharedShortCode_controller.update_assignment(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance

The singleton instance of the ``` ConferenceController ``` class can be accessed from the API Client.

```ruby
conference_controller = client.conference
```

### <a name="deaf_mute_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.deaf_mute_participant") deaf_mute_participant

> Deaf Mute Participant


```ruby
def deaf_mute_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | ID of the active conference |
| participant_sid |  ``` Required ```  | ID of an active participant |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| muted |  ``` Optional ```  | Mute a participant |
| deaf |  ``` Optional ```  | Make it so a participant cant hear |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'conferenceSid'
collect['conference_sid'] = conference_sid

participant_sid = 'ParticipantSid'
collect['participant_sid'] = participant_sid

response_type = 'json'
collect['response_type'] = response_type

muted = false
collect['muted'] = muted

deaf = false
collect['deaf'] = deaf


result = conference_controller.deaf_mute_participant(collect)

```


### <a name="view_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.view_participant") view_participant

> Retrieve information about a participant by its ParticipantSid.


```ruby
def view_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

participant_sid = 'ParticipantSid'
collect['participant_sid'] = participant_sid

response_type = 'json'
collect['response_type'] = response_type


result = conference_controller.view_participant(collect)

```


### <a name="view_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.view_conference") view_conference

> Retrieve information about a conference by its ConferenceSid.


```ruby
def view_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier of each conference resource |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

response_type = 'json'
collect['response_type'] = response_type


result = conference_controller.view_conference(collect)

```


### <a name="add_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.add_participant") add_participant

> Add Participant in conference 


```ruby
def add_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_number |  ``` Required ```  | The phone number of the participant to be added. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

participant_number = 'ParticipantNumber'
collect['participant_number'] = participant_number

response_type = 'json'
collect['response_type'] = response_type

muted = false
collect['muted'] = muted

deaf = false
collect['deaf'] = deaf


result = conference_controller.add_participant(collect)

```


### <a name="create_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_conference") create_conference

> Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.


```ruby
def create_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid 10-digit number (E.164 format) that will be initiating the conference call. |
| to |  ``` Required ```  | A valid 10-digit number (E.164 format) that is to receive the conference call. |
| url |  ``` Required ```  | URL requested once the conference connects |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fallback_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fallback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| record |  ``` Optional ```  | Specifies if the conference should be recorded. |
| record_call_back_url |  ``` Optional ```  | Recording parameters will be sent here upon completion. |
| record_call_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once conference connects. |
| schedule_time |  ``` Optional ```  | Schedule conference in future. Schedule time must be greater than current time |
| timeout |  ``` Optional ```  | The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set. |


#### Example Usage

```ruby
collect = Hash.new

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

url = 'Url'
collect['url'] = url

response_type = 'json'
collect['response_type'] = response_type

method = Ytel::HttpActionEnum::POST
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Ytel::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fallback_url = 'FallbackUrl'
collect['fallback_url'] = fallback_url

fallback_method = Ytel::HttpActionEnum::GET
collect['fallback_method'] = fallback_method

record = false
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Ytel::HttpActionEnum::GET
collect['record_call_back_method'] = record_call_back_method

schedule_time = 'ScheduleTime'
collect['schedule_time'] = schedule_time

timeout = 98
collect['timeout'] = timeout


result = conference_controller.create_conference(collect)

```


### <a name="hangup_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.hangup_participant") hangup_participant

> Remove a participant from a conference.


```ruby
def hangup_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

participant_sid = 'ParticipantSid'
collect['participant_sid'] = participant_sid

response_type = 'json'
collect['response_type'] = response_type


result = conference_controller.hangup_participant(collect)

```


### <a name="play_conference_audio"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.play_conference_audio") play_conference_audio

> Play an audio file during a conference.


```ruby
def play_conference_audio(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |
| audio_url |  ``` Required ```  | The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

participant_sid = 'ParticipantSid'
collect['participant_sid'] = participant_sid

audio_url = Ytel::AudioFormatEnum::MP3
collect['audio_url'] = audio_url

response_type = 'json'
collect['response_type'] = response_type


result = conference_controller.play_conference_audio(collect)

```


### <a name="list_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.list_participant") list_participant

> Retrieve a list of participants for an in-progress conference.


```ruby
def list_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

muted = false
collect['muted'] = muted

deaf = false
collect['deaf'] = deaf


result = conference_controller.list_participant(collect)

```


### <a name="list_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.list_conference") list_conference

> Retrieve a list of conference objects.


```ruby
def list_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| friendly_name |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| date_created |  ``` Optional ```  | Conference created date |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

date_created = 'DateCreated'
collect['date_created'] = date_created


result = conference_controller.list_conference(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance

The singleton instance of the ``` PhoneNumberController ``` class can be accessed from the API Client.

```ruby
phoneNumber_controller = client.phone_number
```

### <a name="available_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.available_phone_number") available_phone_number

> Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.


```ruby
def available_phone_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numbertype |  ``` Required ```  | Number type either SMS,Voice or all |
| areacode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return. |


#### Example Usage

```ruby
collect = Hash.new

numbertype = Ytel::NumberTypeEnum::ALL
collect['numbertype'] = numbertype

areacode = 'areacode'
collect['areacode'] = areacode

response_type = 'json'
collect['response_type'] = response_type

pagesize = 10
collect['pagesize'] = pagesize


result = phoneNumber_controller.available_phone_number(collect)

```


### <a name="mass_release_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.mass_release_number") mass_release_number

> Remove a purchased Ytel number from your account.


```ruby
def mass_release_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel comma separated numbers (E.164 format). |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.mass_release_number(collect)

```


### <a name="view_number_details"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.view_number_details") view_number_details

> Retrieve the details for a phone number by its number.


```ruby
def view_number_details(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel 10-digit phone number (E.164 format). |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.view_number_details(collect)

```


### <a name="release_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.release_number") release_number

> Remove a purchased Ytel number from your account.


```ruby
def release_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.release_number(collect)

```


### <a name="buy_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.buy_number") buy_number

> Purchase a phone number to be used with your Ytel account


```ruby
def buy_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.buy_number(collect)

```


### <a name="update_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.update_phone_number") update_phone_number

> Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```ruby
def update_phone_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel number (E.164 format). |
| voice_url |  ``` Required ```  | URL requested once the call connects |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendly_name |  ``` Optional ```  | Phone number friendly name description |
| voice_method |  ``` Optional ```  | Post or Get |
| voice_fallback_url |  ``` Optional ```  | URL requested if the voice URL is not available |
| voice_fallback_method |  ``` Optional ```  | Post or Get |
| hangup_callback |  ``` Optional ```  | callback url after a hangup occurs |
| hangup_callback_method |  ``` Optional ```  | Post or Get |
| heartbeat_url |  ``` Optional ```  | URL requested once the call connects |
| heartbeat_method |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time |
| sms_url |  ``` Optional ```  | URL requested when an SMS is received |
| sms_method |  ``` Optional ```  | Post or Get |
| sms_fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl. |
| sms_fallback_method |  ``` Optional ```  | The HTTP method Ytel will use when URL requested if the SmsUrl is not available. |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

voice_url = 'VoiceUrl'
collect['voice_url'] = voice_url

response_type = 'json'
collect['response_type'] = response_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

voice_method = Ytel::HttpActionEnum::GET
collect['voice_method'] = voice_method

voice_fallback_url = 'VoiceFallbackUrl'
collect['voice_fallback_url'] = voice_fallback_url

voice_fallback_method = Ytel::HttpActionEnum::GET
collect['voice_fallback_method'] = voice_fallback_method

hangup_callback = 'HangupCallback'
collect['hangup_callback'] = hangup_callback

hangup_callback_method = Ytel::HttpActionEnum::GET
collect['hangup_callback_method'] = hangup_callback_method

heartbeat_url = 'HeartbeatUrl'
collect['heartbeat_url'] = heartbeat_url

heartbeat_method = Ytel::HttpActionEnum::GET
collect['heartbeat_method'] = heartbeat_method

sms_url = 'SmsUrl'
collect['sms_url'] = sms_url

sms_method = Ytel::HttpActionEnum::GET
collect['sms_method'] = sms_method

sms_fallback_url = 'SmsFallbackUrl'
collect['sms_fallback_url'] = sms_fallback_url

sms_fallback_method = Ytel::HttpActionEnum::GET
collect['sms_fallback_method'] = sms_fallback_method


result = phoneNumber_controller.update_phone_number(collect)

```


### <a name="transfer_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.transfer_number") transfer_number

> Transfer phone number that has been purchased for from one account to another account.


```ruby
def transfer_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| fromaccountsid |  ``` Required ```  | A specific Accountsid from where Number is getting transfer. |
| toaccountsid |  ``` Required ```  | A specific Accountsid to which Number is getting transfer. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phonenumber = 'phonenumber'
collect['phonenumber'] = phonenumber

fromaccountsid = 'fromaccountsid'
collect['fromaccountsid'] = fromaccountsid

toaccountsid = 'toaccountsid'
collect['toaccountsid'] = toaccountsid

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.transfer_number(collect)

```


### <a name="list_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.list_number") list_number

> Retrieve a list of purchased phones numbers associated with your Ytel account.


```ruby
def list_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| number_type |  ``` Optional ```  | The capability supported by the number.Number type either SMS,Voice or all |
| friendly_name |  ``` Optional ```  | A human-readable label added to the number object. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

number_type = Ytel::NumberTypeEnum::ALL
collect['number_type'] = number_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name


result = phoneNumber_controller.list_number(collect)

```


### <a name="mass_update_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.mass_update_number") mass_update_number

> Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```ruby
def mass_update_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid comma(,) separated Ytel numbers. (E.164 format). |
| voice_url |  ``` Required ```  | The URL returning InboundXML incoming calls should execute when connected. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendly_name |  ``` Optional ```  | A human-readable value for labeling the number. |
| voice_method |  ``` Optional ```  | Specifies the HTTP method used to request the VoiceUrl once incoming call connects. |
| voice_fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML on a call or at initial request of the voice url |
| voice_fallback_method |  ``` Optional ```  | Specifies the HTTP method used to request the VoiceFallbackUrl once incoming call connects. |
| hangup_callback |  ``` Optional ```  | URL that can be requested to receive notification when and how incoming call has ended. |
| hangup_callback_method |  ``` Optional ```  | The HTTP method Ytel will use when requesting the HangupCallback URL. |
| heartbeat_url |  ``` Optional ```  | URL that can be used to monitor the phone number. |
| heartbeat_method |  ``` Optional ```  | The HTTP method Ytel will use when requesting the HeartbeatUrl. |
| sms_url |  ``` Optional ```  | URL requested when an SMS is received. |
| sms_method |  ``` Optional ```  | The HTTP method Ytel will use when requesting the SmsUrl. |
| sms_fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl. |
| sms_fallback_method |  ``` Optional ```  | The HTTP method Ytel will use when URL requested if the SmsUrl is not available. |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

voice_url = 'VoiceUrl'
collect['voice_url'] = voice_url

response_type = 'json'
collect['response_type'] = response_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

voice_method = Ytel::HttpActionEnum::GET
collect['voice_method'] = voice_method

voice_fallback_url = 'VoiceFallbackUrl'
collect['voice_fallback_url'] = voice_fallback_url

voice_fallback_method = Ytel::HttpActionEnum::GET
collect['voice_fallback_method'] = voice_fallback_method

hangup_callback = 'HangupCallback'
collect['hangup_callback'] = hangup_callback

hangup_callback_method = Ytel::HttpActionEnum::GET
collect['hangup_callback_method'] = hangup_callback_method

heartbeat_url = 'HeartbeatUrl'
collect['heartbeat_url'] = heartbeat_url

heartbeat_method = Ytel::HttpActionEnum::GET
collect['heartbeat_method'] = heartbeat_method

sms_url = 'SmsUrl'
collect['sms_url'] = sms_url

sms_method = Ytel::HttpActionEnum::GET
collect['sms_method'] = sms_method

sms_fallback_url = 'SmsFallbackUrl'
collect['sms_fallback_url'] = sms_fallback_url

sms_fallback_method = Ytel::HttpActionEnum::GET
collect['sms_fallback_method'] = sms_fallback_method


result = phoneNumber_controller.mass_update_number(collect)

```


### <a name="get_did_score_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.get_did_score_number") get_did_score_number

> Get DID Score Number


```ruby
def get_did_score_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | Specifies the multiple phone numbers for check updated spamscore . |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phonenumber = 'Phonenumber'
collect['phonenumber'] = phonenumber

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber_controller.get_did_score_number(collect)

```


### <a name="bulk_buy_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.bulk_buy_number") bulk_buy_number

> Purchase a selected number of DID's from specific area codes to be used with your Ytel account.


```ruby
def bulk_buy_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number_type |  ``` Required ```  | The capability the number supports. |
| area_code |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| quantity |  ``` Required ```  | A positive integer that tells how many number you want to buy at a time. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| leftover |  ``` Optional ```  | If desired quantity is unavailable purchase what is available . |


#### Example Usage

```ruby
collect = Hash.new

number_type = Ytel::NumberTypeEnum::ALL
collect['number_type'] = number_type

area_code = 'AreaCode'
collect['area_code'] = area_code

quantity = 'Quantity'
collect['quantity'] = quantity

response_type = 'json'
collect['response_type'] = response_type

leftover = 'Leftover'
collect['leftover'] = leftover


result = phoneNumber_controller.bulk_buy_number(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance

The singleton instance of the ``` TranscriptionController ``` class can be accessed from the API Client.

```ruby
transcription_controller = client.transcription
```

### <a name="view_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.view_transcription") view_transcription

> Retrieve information about a transaction by its TranscriptionSid.


```ruby
def view_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionsid |  ``` Required ```  | The unique identifier for a transcription object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

transcriptionsid = 'transcriptionsid'
collect['transcriptionsid'] = transcriptionsid

response_type = 'json'
collect['response_type'] = response_type


result = transcription_controller.view_transcription(collect)

```


### <a name="recording_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.recording_transcription") recording_transcription

> Transcribe a message360 recording by its RecordingSid.


```ruby
def recording_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | The unique identifier for a recording object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'recordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = transcription_controller.recording_transcription(collect)

```


### <a name="audio_url_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.audio_url_transcription") audio_url_transcription

> Transcribe an audio recording from a file.


```ruby
def audio_url_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audiourl |  ``` Required ```  | URL pointing to the location of the audio file that is to be transcribed. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

audiourl = 'audiourl'
collect['audiourl'] = audiourl

response_type = 'json'
collect['response_type'] = response_type


result = transcription_controller.audio_url_transcription(collect)

```


### <a name="list_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.list_transcription") list_transcription

> Retrieve a list of transcription objects for your Ytel account.


```ruby
def list_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| status |  ``` Optional ```  | The state of the transcription. |
| date_transcribed |  ``` Optional ```  | The date the transcription took place. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

status = Ytel::StatusEnum::INPROGRESS
collect['status'] = status

date_transcribed = 'dateTranscribed'
collect['date_transcribed'] = date_transcribed


result = transcription_controller.list_transcription(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance

The singleton instance of the ``` RecordingController ``` class can be accessed from the API Client.

```ruby
recording_controller = client.recording
```

### <a name="view_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.view_recording") view_recording

> Retrieve the recording of a call by its RecordingSid. This resource will return information regarding the call such as start time, end time, duration, and so forth.


```ruby
def view_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for the recording. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recordingsid = 'recordingsid'
collect['recordingsid'] = recordingsid

response_type = 'json'
collect['response_type'] = response_type


result = recording_controller.view_recording(collect)

```


### <a name="delete_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.delete_recording") delete_recording

> Remove a recording from your Ytel account.


```ruby
def delete_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for a recording. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recordingsid = 'recordingsid'
collect['recordingsid'] = recordingsid

response_type = 'json'
collect['response_type'] = response_type


result = recording_controller.delete_recording(collect)

```


### <a name="list_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.list_recording") list_recording

> Retrieve a list of recording objects.


```ruby
def list_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| datecreated |  ``` Optional ```  | Filter results by creation date |
| callsid |  ``` Optional ```  | The unique identifier for a call. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

datecreated = 'Datecreated'
collect['datecreated'] = datecreated

callsid = 'callsid'
collect['callsid'] = callsid


result = recording_controller.list_recording(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email_controller = client.email
```

### <a name="delete_spam"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_spam") delete_spam

> Remove an email from the spam email list.


```ruby
def delete_spam(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | A valid email address that is to be remove from the spam list. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

email = 'Email'
collect['email'] = email


result = email_controller.delete_spam(collect)

```


### <a name="delete_block"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_block") delete_block

> Remove an email from blocked emails list.


```ruby
def delete_block(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the blocked list. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'Email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email_controller.delete_block(collect)

```


### <a name="add_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.add_unsubscribes") add_unsubscribes

> Add an email to the unsubscribe list


```ruby
def add_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be added to the unsubscribe list |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email_controller.add_unsubscribes(collect)

```


### <a name="send_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.send_email") send_email

> Create and submit an email message to one or more email addresses.


```ruby
def send_email(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| type |  ``` Required ```  ``` DefaultValue ```  | Specifies the type of email to be sent |
| subject |  ``` Required ```  | The subject of the mail. Must be a valid string. |
| message |  ``` Required ```  | The email message that is to be sent in the text. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| from |  ``` Optional ```  | A valid address that will send the email. |
| cc |  ``` Optional ```  | Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| bcc |  ``` Optional ```  | Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| attachment |  ``` Optional ```  | A file that is attached to the email. Must be less than 7 MB in size. |


#### Example Usage

```ruby
collect = Hash.new

to = 'To'
collect['to'] = to

type = Ytel::SendEmailAsEnum::HTML
collect['type'] = type

subject = 'Subject'
collect['subject'] = subject

message = 'Message'
collect['message'] = message

response_type = 'json'
collect['response_type'] = response_type

from = 'From'
collect['from'] = from

cc = 'Cc'
collect['cc'] = cc

bcc = 'Bcc'
collect['bcc'] = bcc

attachment = 'Attachment'
collect['attachment'] = attachment


result = email_controller.send_email(collect)

```


### <a name="delete_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_unsubscribes") delete_unsubscribes

> Remove an email address from the list of unsubscribed emails.


```ruby
def delete_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the unsubscribe list. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email_controller.delete_unsubscribes(collect)

```


### <a name="list_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_unsubscribes") list_unsubscribes

> Retrieve a list of email addresses from the unsubscribe list.


```ruby
def list_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of unsubscribed emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'Offset'
collect['offset'] = offset

limit = 'Limit'
collect['limit'] = limit


result = email_controller.list_unsubscribes(collect)

```


### <a name="list_invalid"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_invalid") list_invalid

> Retrieve a list of invalid email addresses.


```ruby
def list_invalid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of invalid emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'Offset'
collect['offset'] = offset

limit = 'Limit'
collect['limit'] = limit


result = email_controller.list_invalid(collect)

```


### <a name="delete_bounces"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_bounces") delete_bounces

> Remove an email address from the bounced list.


```ruby
def delete_bounces(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | The email address to be remove from the bounced email list. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

email = 'Email'
collect['email'] = email


result = email_controller.delete_bounces(collect)

```


### <a name="list_bounces"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_bounces") list_bounces

> Retrieve a list of emails that have bounced.


```ruby
def list_bounces(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of bounced emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'Offset'
collect['offset'] = offset

limit = 'Limit'
collect['limit'] = limit


result = email_controller.list_bounces(collect)

```


### <a name="list_spam"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_spam") list_spam

> Retrieve a list of emails that are on the spam list.


```ruby
def list_spam(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of spam emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'Offset'
collect['offset'] = offset

limit = 'Limit'
collect['limit'] = limit


result = email_controller.list_spam(collect)

```


### <a name="list_blocks"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_blocks") list_blocks

> Retrieve a list of emails that have been blocked.


```ruby
def list_blocks(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The starting point of the list of blocked emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'Offset'
collect['offset'] = offset

limit = 'Limit'
collect['limit'] = limit


result = email_controller.list_blocks(collect)

```


### <a name="delete_invalid"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_invalid") delete_invalid

> Remove an email from the invalid email list.


```ruby
def delete_invalid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the invalid email list. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

email = 'Email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email_controller.delete_invalid(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS_controller = client.sms
```

### <a name="send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.send_sms") send_sms

> Send an SMS from a Ytel number


```ruby
def send_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent. |
| to |  ``` Required ```  | The 10-digit phone number (E.164 format) that will receive the message. |
| body |  ``` Required ```  | The body message that is to be sent in the text. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| message_status_callback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Optional ```  ``` DefaultValue ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |
| delivery_status |  ``` Optional ```  ``` DefaultValue ```  | Delivery reports are a method to tell your system if the message has arrived on the destination phone. |


#### Example Usage

```ruby
collect = Hash.new

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

body = 'Body'
collect['body'] = body

response_type = 'json'
collect['response_type'] = response_type

method = Ytel::HttpActionEnum::GET
collect['method'] = method

message_status_callback = 'MessageStatusCallback'
collect['message_status_callback'] = message_status_callback

smartsms = false
collect['smartsms'] = smartsms

delivery_status = false
collect['delivery_status'] = delivery_status


result = sMS_controller.send_sms(collect)

```


### <a name="view_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.view_sms") view_sms

> Retrieve a single SMS message object by its SmsSid.


```ruby
def view_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for a sms message. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

message_sid = 'MessageSid'
collect['message_sid'] = message_sid

response_type = 'json'
collect['response_type'] = response_type


result = sMS_controller.view_sms(collect)

```


### <a name="list_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.list_sms") list_sms

> Retrieve a list of Outbound SMS message objects.


```ruby
def list_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| date_sent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

date_sent = 'DateSent'
collect['date_sent'] = date_sent


result = sMS_controller.list_sms(collect)

```


### <a name="list_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.list_inbound_sms") list_inbound_sms

> Retrieve a list of Inbound SMS message objects.


```ruby
def list_inbound_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| date_sent |  ``` Optional ```  | Filter sms message objects by this date. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

date_sent = 'DateSent'
collect['date_sent'] = date_sent


result = sMS_controller.list_inbound_sms(collect)

```


### <a name="view_detail_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.view_detail_sms") view_detail_sms

> Retrieve a single SMS message object with details by its SmsSid.


```ruby
def view_detail_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for a sms message. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

message_sid = 'MessageSid'
collect['message_sid'] = message_sid

response_type = 'json'
collect['response_type'] = response_type


result = sMS_controller.view_detail_sms(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance

The singleton instance of the ``` CallController ``` class can be accessed from the API Client.

```ruby
call_controller = client.call
```

### <a name="make_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.make_call") make_call

> You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json


```ruby
def make_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fall_back_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fall_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heart_beat_url |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed tim |
| heart_beat_method |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) Ytel should wait while the call is ringing before canceling the call |
| play_dtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hide_caller_id |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| record_call_back_url |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| record_call_back_method |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribe_call_back_url |  ``` Optional ```  | Transcription parameters will be sent here upon completion |
| if_machine |  ``` Optional ```  | How Ytel should handle the receiving numbers voicemail machine |
| if_machine_url |  ``` Optional ```  | URL requested when IfMachine=continue |
| if_machine_method |  ``` Optional ```  | Method used to request the IfMachineUrl. |
| feedback |  ``` Optional ```  | Specify if survey should be enable or not |
| survey_id |  ``` Optional ```  | The unique identifier for the survey. |


#### Example Usage

```ruby
collect = Hash.new

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

url = 'Url'
collect['url'] = url

response_type = 'json'
collect['response_type'] = response_type

method = Ytel::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Ytel::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Ytel::HttpActionEnum::GET
collect['fall_back_method'] = fall_back_method

heart_beat_url = 'HeartBeatUrl'
collect['heart_beat_url'] = heart_beat_url

heart_beat_method = Ytel::HttpActionEnum::GET
collect['heart_beat_method'] = heart_beat_method

timeout = 26
collect['timeout'] = timeout

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

hide_caller_id = false
collect['hide_caller_id'] = hide_caller_id

record = false
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Ytel::HttpActionEnum::GET
collect['record_call_back_method'] = record_call_back_method

transcribe = false
collect['transcribe'] = transcribe

transcribe_call_back_url = 'TranscribeCallBackUrl'
collect['transcribe_call_back_url'] = transcribe_call_back_url

if_machine = Ytel::IfMachineEnum::CONTINUE
collect['if_machine'] = if_machine

if_machine_url = 'IfMachineUrl'
collect['if_machine_url'] = if_machine_url

if_machine_method = Ytel::HttpActionEnum::GET
collect['if_machine_method'] = if_machine_method

feedback = false
collect['feedback'] = feedback

survey_id = 'SurveyId'
collect['survey_id'] = survey_id


result = call_controller.make_call(collect)

```


### <a name="play_audio"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.play_audio") play_audio

> Play Dtmf and send the Digit


```ruby
def play_audio(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| audio_url |  ``` Required ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| say_text |  ``` Required ```  | Valid alphanumeric string that should be played to the In-progress call. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| length |  ``` Optional ```  | Time limit in seconds for audio play back |
| direction |  ``` Optional ```  | The leg of the call audio will be played to |
| mix |  ``` Optional ```  | If false, all other audio will be muted |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

audio_url = 'AudioUrl'
collect['audio_url'] = audio_url

say_text = 'SayText'
collect['say_text'] = say_text

response_type = 'json'
collect['response_type'] = response_type

length = 26
collect['length'] = length

direction = Ytel::DirectionEnum::IN
collect['direction'] = direction

mix = false
collect['mix'] = mix


result = call_controller.play_audio(collect)

```


### <a name="record_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.record_call") record_call

> Start or stop recording of an in-progress voice call.


```ruby
def record_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| record |  ``` Required ```  | Set true to initiate recording or false to terminate recording |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| direction |  ``` Optional ```  | The leg of the call to record |
| time_limit |  ``` Optional ```  | Time in seconds the recording duration should not exceed |
| call_back_url |  ``` Optional ```  | URL consulted after the recording completes |
| fileformat |  ``` Optional ```  | Format of the recording file. Can be .mp3 or .wav |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

record = false
collect['record'] = record

response_type = 'json'
collect['response_type'] = response_type

direction = Ytel::DirectionEnum::IN
collect['direction'] = direction

time_limit = 26
collect['time_limit'] = time_limit

call_back_url = 'CallBackUrl'
collect['call_back_url'] = call_back_url

fileformat = Ytel::AudioFormatEnum::MP3
collect['fileformat'] = fileformat


result = call_controller.record_call(collect)

```


### <a name="voice_effect"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.voice_effect") voice_effect

> Add audio voice effects to the an in-progress voice call.


```ruby
def voice_effect(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for the in-progress voice call. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| audio_direction |  ``` Optional ```  | The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream. |
| pitch_semi_tones |  ``` Optional ```  | Set the pitch in semitone (half-step) intervals. Value between -14 and 14 |
| pitch_octaves |  ``` Optional ```  | Set the pitch in octave intervals.. Value between -1 and 1 |
| pitch |  ``` Optional ```  | Set the pitch (lowness/highness) of the audio. The higher the value, the higher the pitch. Value greater than 0 |
| rate |  ``` Optional ```  | Set the rate for audio. The lower the value, the lower the rate. value greater than 0 |
| tempo |  ``` Optional ```  | Set the tempo (speed) of the audio. A higher value denotes a faster tempo. Value greater than 0 |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

response_type = 'json'
collect['response_type'] = response_type

audio_direction = Ytel::AudioDirectionEnum::IN
collect['audio_direction'] = audio_direction

pitch_semi_tones = 26.9076637140977
collect['pitch_semi_tones'] = pitch_semi_tones

pitch_octaves = 26.9076637140977
collect['pitch_octaves'] = pitch_octaves

pitch = 26.9076637140977
collect['pitch'] = pitch

rate = 26.9076637140977
collect['rate'] = rate

tempo = 26.9076637140977
collect['tempo'] = tempo


result = call_controller.voice_effect(collect)

```


### <a name="send_digit"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.send_digit") send_digit

> Play Dtmf and send the Digit


```ruby
def send_digit(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| play_dtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| play_dtmf_direction |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

response_type = 'json'
collect['response_type'] = response_type

play_dtmf_direction = Ytel::DirectionEnum::IN
collect['play_dtmf_direction'] = play_dtmf_direction


result = call_controller.send_digit(collect)

```


### <a name="interrupted_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.interrupted_call") interrupted_call

> Interrupt the Call by Call Sid


```ruby
def interrupted_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for voice call that is in progress. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

response_type = 'json'
collect['response_type'] = response_type

url = 'Url'
collect['url'] = url

method = Ytel::HttpActionEnum::GET
collect['method'] = method

status = Ytel::InterruptedCallStatusEnum::CANCELED
collect['status'] = status


result = call_controller.interrupted_call(collect)

```


### <a name="list_calls"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.list_calls") list_calls

> A list of calls associated with your Ytel account


```ruby
def list_calls(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Filter calls that were sent to this 10-digit number (E.164 format). |
| from |  ``` Optional ```  | Filter calls that were sent from this 10-digit number (E.164 format). |
| date_created |  ``` Optional ```  | Return calls that are from a specified date. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

to = 'To'
collect['to'] = to

from = 'From'
collect['from'] = from

date_created = 'DateCreated'
collect['date_created'] = date_created


result = call_controller.list_calls(collect)

```


### <a name="send_ringless_vm"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.send_ringless_vm") send_ringless_vm

> Initiate an outbound Ringless Voicemail through Ytel.


```ruby
def send_ringless_vm(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| rvm_caller_id |  ``` Required ```  | A required secondary Caller ID for RVM to work. |
| to |  ``` Required ```  | A valid number (E.164 format) that will receive the phone call. |
| voice_mail_url |  ``` Required ```  | The URL requested once the RVM connects. A set of default parameters will be sent here. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| stats_call_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |


#### Example Usage

```ruby
collect = Hash.new

from = 'From'
collect['from'] = from

rvm_caller_id = 'RVMCallerId'
collect['rvm_caller_id'] = rvm_caller_id

to = 'To'
collect['to'] = to

voice_mail_url = 'VoiceMailURL'
collect['voice_mail_url'] = voice_mail_url

response_type = 'json'
collect['response_type'] = response_type

method = Ytel::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

stats_call_back_method = Ytel::HttpActionEnum::GET
collect['stats_call_back_method'] = stats_call_back_method


result = call_controller.send_ringless_vm(collect)

```


### <a name="view_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.view_call") view_call

> Retrieve a single voice call’s information by its CallSid.


```ruby
def view_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | The unique identifier for the voice call. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

callsid = 'callsid'
collect['callsid'] = callsid

response_type = 'json'
collect['response_type'] = response_type


result = call_controller.view_call(collect)

```


### <a name="view_call_detail"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.view_call_detail") view_call_detail

> Retrieve a single voice call’s information by its CallSid.


```ruby
def view_call_detail(call_sid,
                         response_type); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for the voice call. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
call_sid = 'callSid'
response_type = 'json'

result = call_controller.view_call_detail(call_sid, response_type)

```


### <a name="group_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.group_call") group_call

> Group Call


```ruby
def group_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222 |
| url |  ``` Required ```  | URL requested once the call connects |
| response_type |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |
| group_confirm_key |  ``` Required ```  | Define the DTMF that the called party should send to bridge the call. Allowed Values : 0-9, #, * |
| group_confirm_file |  ``` Required ```  | Specify the audio file you want to play when the called party picks up the call |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fall_back_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fall_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heart_beat_url |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time and pass other general information. |
| heart_beat_method |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) we should wait while the call is ringing before canceling the call |
| play_dtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hide_caller_id |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| record_call_back_url |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| record_call_back_method |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribe_call_back_url |  ``` Optional ```  | Transcription parameters will be sent here upon completion |


#### Example Usage

```ruby
collect = Hash.new

from = 'From'
collect['from'] = from

to = 'To'
collect['to'] = to

url = 'Url'
collect['url'] = url

response_type = 'json'
collect['response_type'] = response_type

group_confirm_key = 'GroupConfirmKey'
collect['group_confirm_key'] = group_confirm_key

group_confirm_file = Ytel::AudioFormatEnum::MP3
collect['group_confirm_file'] = group_confirm_file

method = Ytel::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Ytel::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Ytel::HttpActionEnum::GET
collect['fall_back_method'] = fall_back_method

heart_beat_url = 'HeartBeatUrl'
collect['heart_beat_url'] = heart_beat_url

heart_beat_method = Ytel::HttpActionEnum::GET
collect['heart_beat_method'] = heart_beat_method

timeout = 26
collect['timeout'] = timeout

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

hide_caller_id = 'HideCallerId'
collect['hide_caller_id'] = hide_caller_id

record = false
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Ytel::HttpActionEnum::GET
collect['record_call_back_method'] = record_call_back_method

transcribe = false
collect['transcribe'] = transcribe

transcribe_call_back_url = 'TranscribeCallBackUrl'
collect['transcribe_call_back_url'] = transcribe_call_back_url


result = call_controller.group_call(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance

The singleton instance of the ``` CarrierController ``` class can be accessed from the API Client.

```ruby
carrier_controller = client.carrier
```

### <a name="carrier_lookup_list"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrier_lookup_list") carrier_lookup_list

> Retrieve a list of carrier lookup objects.


```ruby
def carrier_lookup_list(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size


result = carrier_controller.carrier_lookup_list(collect)

```


### <a name="carrier_lookup"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrier_lookup") carrier_lookup

> Get the Carrier Lookup


```ruby
def carrier_lookup(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid 10-digit number (E.164 format). |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = carrier_controller.carrier_lookup(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance

The singleton instance of the ``` AddressController ``` class can be accessed from the API Client.

```ruby
address_controller = client.address
```

### <a name="create_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_address") create_address

> To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.


```ruby
def create_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| name |  ``` Required ```  | Name of user |
| address |  ``` Required ```  | Address of user. |
| country |  ``` Required ```  | Must be a 2 letter country short-name code (ISO 3166) |
| state |  ``` Required ```  | Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters. |
| city |  ``` Required ```  | City Name. |
| zip |  ``` Required ```  | Zip code of city. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |
| description |  ``` Optional ```  | Description of addresses. |
| email |  ``` Optional ```  | Email Id of user. |
| phone |  ``` Optional ```  | Phone number of user. |


#### Example Usage

```ruby
collect = Hash.new

name = 'Name'
collect['name'] = name

address = 'Address'
collect['address'] = address

country = 'Country'
collect['country'] = country

state = 'State'
collect['state'] = state

city = 'City'
collect['city'] = city

zip = 'Zip'
collect['zip'] = zip

response_type = 'json'
collect['response_type'] = response_type

description = 'Description'
collect['description'] = description

email = 'email'
collect['email'] = email

phone = 'Phone'
collect['phone'] = phone


result = address_controller.create_address(collect)

```


### <a name="view_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.view_address") view_address

> View Address Specific address Book by providing the address id


```ruby
def view_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be retrieved. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

addressid = 'addressid'
collect['addressid'] = addressid

response_type = 'json'
collect['response_type'] = response_type


result = address_controller.view_address(collect)

```


### <a name="list_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.list_address") list_address

> List All Address 


```ruby
def list_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressid |  ``` Optional ```  | addresses Sid |
| date_created |  ``` Optional ```  | date created address. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

addressid = 'addressid'
collect['addressid'] = addressid

date_created = 'dateCreated'
collect['date_created'] = date_created


result = address_controller.list_address(collect)

```


### <a name="verify_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.verify_address") verify_address

> Validates an address given.


```ruby
def verify_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be verified. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

addressid = 'addressid'
collect['addressid'] = addressid

response_type = 'json'
collect['response_type'] = response_type


result = address_controller.verify_address(collect)

```


### <a name="delete_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.delete_address") delete_address

> To delete Address to your address book


```ruby
def delete_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be deleted. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

addressid = 'addressid'
collect['addressid'] = addressid

response_type = 'json'
collect['response_type'] = response_type


result = address_controller.delete_address(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance

The singleton instance of the ``` SubAccountController ``` class can be accessed from the API Client.

```ruby
subAccount_controller = client.sub_account
```

### <a name="delete_sub_account"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.delete_sub_account") delete_sub_account

> Delete sub account or merge numbers into parent


```ruby
def delete_sub_account(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sub_account_sid |  ``` Required ```  | The SubaccountSid to be deleted |
| merge_number |  ``` Required ```  ``` DefaultValue ```  | 0 to delete or 1 to merge numbers to parent account. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

sub_account_sid = 'SubAccountSID'
collect['sub_account_sid'] = sub_account_sid

merge_number = Ytel::MergeNumberStatusEnum::DELETE
collect['merge_number'] = merge_number

response_type = 'json'
collect['response_type'] = response_type


result = subAccount_controller.delete_sub_account(collect)

```


### <a name="suspend_sub_account"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.suspend_sub_account") suspend_sub_account

> Suspend or unsuspend


```ruby
def suspend_sub_account(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sub_account_sid |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| activate |  ``` Required ```  ``` DefaultValue ```  | 0 to suspend or 1 to activate |
| response_type |  ``` Required ```  ``` DefaultValue ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

sub_account_sid = 'SubAccountSID'
collect['sub_account_sid'] = sub_account_sid

activate = Ytel::ActivateStatusEnum::DEACTIVATE
collect['activate'] = activate

response_type = 'json'
collect['response_type'] = response_type


result = subAccount_controller.suspend_sub_account(collect)

```


### <a name="create_sub_account"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.create_sub_account") create_sub_account

> Create a sub user account under the parent account


```ruby
def create_sub_account(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| first_name |  ``` Required ```  | Sub account user first name |
| last_name |  ``` Required ```  | sub account user last name |
| email |  ``` Required ```  | Sub account email address |
| friendly_name |  ``` Required ```  | Descriptive name of the sub account |
| password |  ``` Required ```  | The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

first_name = 'FirstName'
collect['first_name'] = first_name

last_name = 'LastName'
collect['last_name'] = last_name

email = 'Email'
collect['email'] = email

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

password = 'Password'
collect['password'] = password

response_type = 'json'
collect['response_type'] = response_type


result = subAccount_controller.create_sub_account(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account_controller = client.account
```

### <a name="view_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.view_account") view_account

> Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.


```ruby
def view_account(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | Filter account information based on date. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

date = 'Date'
collect['date'] = date

response_type = 'json'
collect['response_type'] = response_type


result = account_controller.view_account(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance

The singleton instance of the ``` UsageController ``` class can be accessed from the API Client.

```ruby
usage_controller = client.usage
```

### <a name="list_usage"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.list_usage") list_usage

> Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.


```ruby
def list_usage(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| product_code |  ``` Optional ```  ``` DefaultValue ```  | Filter usage results by product type. |
| start_date |  ``` Optional ```  ``` DefaultValue ```  | Filter usage objects by start date. |
| end_date |  ``` Optional ```  ``` DefaultValue ```  | Filter usage objects by end date. |
| include_sub_accounts |  ``` Optional ```  | Will include all subaccount usage data |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

product_code = Ytel::ProductCodeEnum::ALL
collect['product_code'] = product_code

start_date = '2016-09-06'
collect['start_date'] = start_date

end_date = '2016-09-06'
collect['end_date'] = end_date

include_sub_accounts = 'IncludeSubAccounts'
collect['include_sub_accounts'] = include_sub_accounts


result = usage_controller.list_usage(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

### Get singleton instance

The singleton instance of the ``` ShortCodeController ``` class can be accessed from the API Client.

```ruby
shortCode_controller = client.short_code
```

### <a name="send_dedicated_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.send_dedicated_shortcode") send_dedicated_shortcode

> TODO: Add a method description


```ruby
def send_dedicated_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | Your dedicated shortcode |
| to |  ``` Required ```  | The number to send your SMS to |
| body |  ``` Required ```  | The body of your message |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 240
collect['shortcode'] = shortcode

to = 240.184490487531
collect['to'] = to

body = 'body'
collect['body'] = body

response_type = 'json'
collect['response_type'] = response_type

method = Ytel::HttpActionEnum::GET
collect['method'] = method

messagestatuscallback = 'messagestatuscallback'
collect['messagestatuscallback'] = messagestatuscallback


result = shortCode_controller.send_dedicated_shortcode(collect)

```


### <a name="view_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.view_shortcode") view_shortcode

> View a single Sms Short Code message.


```ruby
def view_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for the sms resource |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

message_sid = 'MessageSid'
collect['message_sid'] = message_sid

response_type = 'json'
collect['response_type'] = response_type


result = shortCode_controller.view_shortcode(collect)

```


### <a name="list_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.list_shortcode") list_shortcode

> Retrieve a list of Short Code message objects.


```ruby
def list_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| date_sent |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

to = 'To'
collect['to'] = to

date_sent = 'DateSent'
collect['date_sent'] = date_sent

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size


result = shortCode_controller.list_shortcode(collect)

```


### <a name="list_inbound_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.list_inbound_shortcode") list_inbound_shortcode

> Retrive a list of inbound Sms Short Code messages associated with your Ytel account.


```ruby
def list_inbound_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| datecreated |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

from = 'From'
collect['from'] = from

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

datecreated = 'Datecreated'
collect['datecreated'] = datecreated


result = shortCode_controller.list_inbound_shortcode(collect)

```


### <a name="view_dedicated_shortcode_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.view_dedicated_shortcode_assignment") view_dedicated_shortcode_assignment

> Retrieve a single Short Code object by its shortcode assignment.


```ruby
def view_dedicated_shortcode_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Dedicated Short Code to your Ytel account |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

response_type = 'json'
collect['response_type'] = response_type


result = shortCode_controller.view_dedicated_shortcode_assignment(collect)

```


### <a name="update_dedicated_short_code_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.update_dedicated_short_code_assignment") update_dedicated_short_code_assignment

> Update a dedicated shortcode.


```ruby
def update_dedicated_short_code_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid dedicated shortcode to your Ytel account. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| friendly_name |  ``` Optional ```  | User generated name of the dedicated shortcode. |
| callback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| callback_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| fallback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

response_type = 'json'
collect['response_type'] = response_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

callback_method = 'CallbackMethod'
collect['callback_method'] = callback_method

callback_url = 'CallbackUrl'
collect['callback_url'] = callback_url

fallback_method = 'FallbackMethod'
collect['fallback_method'] = fallback_method

fallback_url = 'FallbackUrl'
collect['fallback_url'] = fallback_url


result = shortCode_controller.update_dedicated_short_code_assignment(collect)

```


### <a name="list_short_code_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.list_short_code_assignment") list_short_code_assignment

> Retrieve a list of Short Code assignment associated with your Ytel account.


```ruby
def list_short_code_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| shortcode |  ``` Optional ```  | Only list Short Code Assignment sent from this Short Code |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

page = 'page'
collect['page'] = page

pagesize = 'pagesize'
collect['pagesize'] = pagesize


result = shortCode_controller.list_short_code_assignment(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostCardController") PostCardController

### Get singleton instance

The singleton instance of the ``` PostCardController ``` class can be accessed from the API Client.

```ruby
postCard_controller = client.post_card
```

### <a name="view_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.view_postcard") view_postcard

> Retrieve a postcard object by its PostcardId.


```ruby
def view_postcard(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier for a postcard object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

postcardid = 'postcardid'
collect['postcardid'] = postcardid

response_type = 'json'
collect['response_type'] = response_type


result = postCard_controller.view_postcard(collect)

```


### <a name="create_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.create_postcard") create_postcard

> Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.


```ruby
def create_postcard(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing postcard by attaching its PostcardId. |
| front |  ``` Required ```  | A 4.25"x6.25" or 6.25"x11.25" image to use as the front of the postcard.  This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| back |  ``` Required ```  | A 4.25"x6.25" or 6.25"x11.25" image to use as the back of the postcard, supplied as a URL, local file, or HTML string.  This allows you to customize your back design, but we will still insert the recipient address for you. |
| message |  ``` Required ```  | The message for the back of the postcard with a maximum of 350 characters. |
| setting |  ``` Required ```  | Code for the dimensions of the media to be printed. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A description for the postcard. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
collect = Hash.new

to = 'to'
collect['to'] = to

from = 'from'
collect['from'] = from

attachbyid = 'attachbyid'
collect['attachbyid'] = attachbyid

front = 'front'
collect['front'] = front

back = 'back'
collect['back'] = back

message = 'message'
collect['message'] = message

setting = 'setting'
collect['setting'] = setting

response_type = 'json'
collect['response_type'] = response_type

description = 'description'
collect['description'] = description

htmldata = 'htmldata'
collect['htmldata'] = htmldata


result = postCard_controller.create_postcard(collect)

```


### <a name="list_postcards"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.list_postcards") list_postcards

> Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.


```ruby
def list_postcards(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| postcardid |  ``` Optional ```  | The unique identifier for a postcard object. |
| date_created |  ``` Optional ```  | The date the postcard was created. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

postcardid = 'postcardid'
collect['postcardid'] = postcardid

date_created = 'dateCreated'
collect['date_created'] = date_created


result = postCard_controller.list_postcards(collect)

```


### <a name="delete_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.delete_postcard") delete_postcard

> Remove a postcard object.


```ruby
def delete_postcard(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier of a postcard object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

postcardid = 'postcardid'
collect['postcardid'] = postcardid

response_type = 'json'
collect['response_type'] = response_type


result = postCard_controller.delete_postcard(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LetterController") LetterController

### Get singleton instance

The singleton instance of the ``` LetterController ``` class can be accessed from the API Client.

```ruby
letter_controller = client.letter
```

### <a name="view_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.view_letter") view_letter

> Retrieve a letter object by its LetterSid.


```ruby
def view_letter(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

lettersid = 'lettersid'
collect['lettersid'] = lettersid

response_type = 'json'
collect['response_type'] = response_type


result = letter_controller.view_letter(collect)

```


### <a name="create_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.create_letter") create_letter

> Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.


```ruby
def create_letter(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing letter by attaching its LetterId. |
| file |  ``` Required ```  | File can be a 8.5"x11" PDF uploaded file or URL that links to a file. |
| color |  ``` Required ```  | Specify if letter should be printed in color. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A description for the letter. |
| extraservice |  ``` Optional ```  | Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50. |
| doublesided |  ``` Optional ```  | Specify if letter should be printed on both sides. |
| template |  ``` Optional ```  | Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
collect = Hash.new

to = 'to'
collect['to'] = to

from = 'from'
collect['from'] = from

attachbyid = 'attachbyid'
collect['attachbyid'] = attachbyid

file = 'file'
collect['file'] = file

color = 'color'
collect['color'] = color

response_type = 'json'
collect['response_type'] = response_type

description = 'description'
collect['description'] = description

extraservice = 'extraservice'
collect['extraservice'] = extraservice

doublesided = 'doublesided'
collect['doublesided'] = doublesided

template = 'template'
collect['template'] = template

htmldata = 'htmldata'
collect['htmldata'] = htmldata


result = letter_controller.create_letter(collect)

```


### <a name="list_letters"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.list_letters") list_letters

> Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.


```ruby
def list_letters(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| lettersid |  ``` Optional ```  | The unique identifier for a letter object. |
| date_created |  ``` Optional ```  | The date the letter was created. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

lettersid = 'lettersid'
collect['lettersid'] = lettersid

date_created = 'dateCreated'
collect['date_created'] = date_created


result = letter_controller.list_letters(collect)

```


### <a name="delete_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.delete_letter") delete_letter

> Remove a letter object by its LetterId.


```ruby
def delete_letter(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

lettersid = 'lettersid'
collect['lettersid'] = lettersid

response_type = 'json'
collect['response_type'] = response_type


result = letter_controller.delete_letter(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="area_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AreaMailController") AreaMailController

### Get singleton instance

The singleton instance of the ``` AreaMailController ``` class can be accessed from the API Client.

```ruby
areaMail_controller = client.area_mail
```

### <a name="create_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.create_area_mail") create_area_mail

> Create a new AreaMail object.


```ruby
def create_area_mail(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| routes |  ``` Required ```  | List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043 |
| attachbyid |  ``` Required ```  | Set an existing areamail by attaching its AreamailId. |
| front |  ``` Required ```  | The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required |
| back |  ``` Required ```  | The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| description |  ``` Optional ```  | A string value to use as a description for this AreaMail item. |
| targettype |  ``` Optional ```  | The delivery location type. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
collect = Hash.new

routes = 'routes'
collect['routes'] = routes

attachbyid = 'attachbyid'
collect['attachbyid'] = attachbyid

front = 'front'
collect['front'] = front

back = 'back'
collect['back'] = back

response_type = 'json'
collect['response_type'] = response_type

description = 'description'
collect['description'] = description

targettype = 'targettype'
collect['targettype'] = targettype

htmldata = 'htmldata'
collect['htmldata'] = htmldata


result = areaMail_controller.create_area_mail(collect)

```


### <a name="view_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.view_area_mail") view_area_mail

> Retrieve an AreaMail object by its AreaMailId.


```ruby
def view_area_mail(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

areamailid = 'areamailid'
collect['areamailid'] = areamailid

response_type = 'json'
collect['response_type'] = response_type


result = areaMail_controller.view_area_mail(collect)

```


### <a name="list_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.list_area_mail") list_area_mail

> Retrieve a list of AreaMail objects.


```ruby
def list_area_mail(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |
| page |  ``` Optional ```  ``` DefaultValue ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | The count of objects to return per page. |
| areamailsid |  ``` Optional ```  | The unique identifier for an AreaMail object. |
| date_created |  ``` Optional ```  | The date the AreaMail was created. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize

areamailsid = 'areamailsid'
collect['areamailsid'] = areamailsid

date_created = 'dateCreated'
collect['date_created'] = date_created


result = areaMail_controller.list_area_mail(collect)

```


### <a name="delete_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.delete_area_mail") delete_area_mail

> Remove an AreaMail object by its AreaMailId.


```ruby
def delete_area_mail(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

areamailid = 'areamailid'
collect['areamailid'] = areamailid

response_type = 'json'
collect['response_type'] = response_type


result = areaMail_controller.delete_area_mail(collect)

```


[Back to List of Controllers](#list_of_controllers)



