# Getting started

message360 API version 3

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_360.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_360-3.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Message360-Ruby&workspaceName=Message360-Ruby&projectName=message_360&gemName=message_360&gemVer=3.0.0)

## How to Use

The following section explains how to use the Message360 Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the Message360 gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_360', '~> 3.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0)

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

client = Message360::Message360Client.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=message360%20API%20V3-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=3.0.0&initLine=client%2520%253D%2520Message360Client.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [TranscriptionController](#transcription_controller)
* [PhoneNumberController](#phone_number_controller)
* [UsageController](#usage_controller)
* [WebRTCController](#web_rtc_controller)
* [RecordingController](#recording_controller)
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [CallController](#call_controller)
* [CarrierController](#carrier_controller)
* [AddressController](#address_controller)
* [SubAccountController](#sub_account_controller)
* [AccountController](#account_controller)
* [ShortCodeController](#short_code_controller)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance

The singleton instance of the ``` SharedShortCodeController ``` class can be accessed from the API Client.

```ruby
sharedShortCode = client.shared_short_code
```

### <a name="view_template"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_template") view_template

> View a Shared ShortCode Template


```ruby
def view_template(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateid |  ``` Required ```  | The unique identifier for a template object |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

templateid = UUID.new
collect['templateid'] = templateid

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode.view_template(collect)

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


result = sharedShortCode.view_shared_shortcodes(collect)

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
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
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

from = 'from'
collect['from'] = from

to = 'to'
collect['to'] = to

datesent = 'datesent'
collect['datesent'] = datesent


result = sharedShortCode.list_outbound_shared_shortcodes(collect)

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
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |
| date_received |  ``` Optional ```  | Only list messages sent with the specified date |


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

date_received = 'DateReceived'
collect['date_received'] = date_received


result = sharedShortCode.list_inbound_shared_shortcodes(collect)

```


### <a name="send_shared_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.send_shared_shortcode") send_shared_shortcode

> Send an SMS from a message360 ShortCode


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

method = Message360::HttpActionEnum::GET
collect['method'] = method

message_status_callback = 'MessageStatusCallback'
collect['message_status_callback'] = message_status_callback


result = sharedShortCode.send_shared_shortcode(collect)

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


result = sharedShortCode.list_templates(collect)

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


result = sharedShortCode.view_keyword(collect)

```


### <a name="list_keyword"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_keyword") list_keyword

> Retrieve a list of keywords associated with your message360 account.


```ruby
def list_keyword(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

keyword = 'Keyword'
collect['keyword'] = keyword

shortcode = 183
collect['shortcode'] = shortcode


result = sharedShortCode.list_keyword(collect)

```


### <a name="view_assignement"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.view_assignement") view_assignement

> The response returned here contains all resource properties associated with the given Shortcode.


```ruby
def view_assignement(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your message360 account |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

response_type = 'json'
collect['response_type'] = response_type


result = sharedShortCode.view_assignement(collect)

```


### <a name="list_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.list_assignment") list_assignment

> Retrieve a list of shortcode assignment associated with your message360 account.


```ruby
def list_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

shortcode = 'Shortcode'
collect['shortcode'] = shortcode


result = sharedShortCode.list_assignment(collect)

```


### <a name="update_assignment"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.update_assignment") update_assignment

> TODO: Add a method description


```ruby
def update_assignment(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid shortcode to your message360 account |
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

callback_method = Message360::HttpActionEnum::GET
collect['callback_method'] = callback_method

fallback_url = 'FallbackUrl'
collect['fallback_url'] = fallback_url

fallback_url_method = Message360::HttpActionEnum::GET
collect['fallback_url_method'] = fallback_url_method


result = sharedShortCode.update_assignment(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance

The singleton instance of the ``` ConferenceController ``` class can be accessed from the API Client.

```ruby
conference = client.conference
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

muted = true
collect['muted'] = muted

deaf = true
collect['deaf'] = deaf


result = conference.deaf_mute_participant(collect)

```


### <a name="view_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.view_participant") view_participant

> View Participant


```ruby
def view_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | unique conference sid |
| participant_sid |  ``` Required ```  | TODO: Add a parameter description |
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


result = conference.view_participant(collect)

```


### <a name="add_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.add_participant") add_participant

> Add Participant in conference 


```ruby
def add_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | Unique Conference Sid |
| participantnumber |  ``` Required ```  | Particiant Number |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| muted |  ``` Optional ```  | add muted |
| deaf |  ``` Optional ```  | add without volume |


#### Example Usage

```ruby
collect = Hash.new

conferencesid = 'conferencesid'
collect['conferencesid'] = conferencesid

participantnumber = 'participantnumber'
collect['participantnumber'] = participantnumber

response_type = 'json'
collect['response_type'] = response_type

muted = true
collect['muted'] = muted

deaf = true
collect['deaf'] = deaf


result = conference.add_participant(collect)

```


### <a name="view_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.view_conference") view_conference

> View Conference


```ruby
def view_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | The unique identifier of each conference resource |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

conferencesid = 'conferencesid'
collect['conferencesid'] = conferencesid

response_type = 'json'
collect['response_type'] = response_type


result = conference.view_conference(collect)

```


### <a name="create_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_conference") create_conference

> Here you can experiment with initiating a conference call through message360 and view the request response generated when doing so.


```ruby
def create_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| method |  ``` Required ```  ``` DefaultValue ```  | Specifies the HTTP method used to request the required URL once call connects. |
| record_callback_url |  ``` Required ```  | Recording parameters will be sent here upon completion. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fall_back_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fall_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| record |  ``` Optional ```  | Specifies if the conference should be recorded. |
| record_callback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once conference connects. |
| schdeule_time |  ``` Optional ```  | Schedule conference in future. Schedule time must be greater than current time |
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

method = Message360::HttpActionEnum::POST
collect['method'] = method

record_callback_url = 'RecordCallbackUrl'
collect['record_callback_url'] = record_callback_url

response_type = 'json'
collect['response_type'] = response_type

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Message360::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Message360::HttpActionEnum::GET
collect['fall_back_method'] = fall_back_method

record = true
collect['record'] = record

record_callback_method = Message360::HttpActionEnum::GET
collect['record_callback_method'] = record_callback_method

schdeule_time = 'SchdeuleTime'
collect['schdeule_time'] = schdeule_time

timeout = 183
collect['timeout'] = timeout


result = conference.create_conference(collect)

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


result = conference.hangup_participant(collect)

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

audio_url = Message360::AudioFormatEnum::MP3
collect['audio_url'] = audio_url

response_type = 'json'
collect['response_type'] = response_type


result = conference.play_conference_audio(collect)

```


### <a name="list_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.list_participant") list_participant

> List Participant


```ruby
def list_participant(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | unique conference sid |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | page number |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Amount of records to return per page |
| muted |  ``` Optional ```  | Participants that are muted |
| deaf |  ``` Optional ```  | Participants cant hear |


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

muted = true
collect['muted'] = muted

deaf = true
collect['deaf'] = deaf


result = conference.list_participant(collect)

```


### <a name="list_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.list_conference") list_conference

> List Conference


```ruby
def list_conference(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| friendly_name |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| date_created |  ``` Optional ```  | Conference created date |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

date_created = 'DateCreated'
collect['date_created'] = date_created


result = conference.list_conference(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance

The singleton instance of the ``` TranscriptionController ``` class can be accessed from the API Client.

```ruby
transcription = client.transcription
```

### <a name="list_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.list_transcription") list_transcription

> Get All transcriptions


```ruby
def list_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | page number |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Amount of data per page |
| status |  ``` Optional ```  | Transcription status |
| date_transcribed |  ``` Optional ```  | Transcription date |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

status = Message360::StatusEnum::INPROGRESS
collect['status'] = status

date_transcribed = 'DateTranscribed'
collect['date_transcribed'] = date_transcribed


result = transcription.list_transcription(collect)

```


### <a name="view_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.view_transcription") view_transcription

> View Specific Transcriptions


```ruby
def view_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcription_sid |  ``` Required ```  | Unique Transcription ID |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

transcription_sid = 'TranscriptionSid'
collect['transcription_sid'] = transcription_sid

response_type = 'json'
collect['response_type'] = response_type


result = transcription.view_transcription(collect)

```


### <a name="recording_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.recording_transcription") recording_transcription

> Recording Transcriptions


```ruby
def recording_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording sid |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = transcription.recording_transcription(collect)

```


### <a name="audio_url_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.audio_url_transcription") audio_url_transcription

> Audio URL Transcriptions


```ruby
def audio_url_transcription(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audio_url |  ``` Required ```  | Audio url |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

audio_url = 'AudioUrl'
collect['audio_url'] = audio_url

response_type = 'json'
collect['response_type'] = response_type


result = transcription.audio_url_transcription(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance

The singleton instance of the ``` PhoneNumberController ``` class can be accessed from the API Client.

```ruby
phoneNumber = client.phone_number
```

### <a name="available_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.available_phone_number") available_phone_number

> Available Phone Number


```ruby
def available_phone_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number_type |  ``` Required ```  | Number type either SMS,Voice or all |
| area_code |  ``` Required ```  | Phone Number Area Code |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Page Size |


#### Example Usage

```ruby
collect = Hash.new

number_type = Message360::NumberTypeEnum::ALL
collect['number_type'] = number_type

area_code = 'AreaCode'
collect['area_code'] = area_code

response_type = 'json'
collect['response_type'] = response_type

page_size = 10
collect['page_size'] = page_size


result = phoneNumber.available_phone_number(collect)

```


### <a name="list_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.list_number") list_number

> List Account's Phone number details


```ruby
def list_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| number_type |  ``` Optional ```  | SMS or Voice |
| friendly_name |  ``` Optional ```  | Friendly name of the number |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

number_type = Message360::NumberTypeEnum::ALL
collect['number_type'] = number_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name


result = phoneNumber.list_number(collect)

```


### <a name="view_number_details"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.view_number_details") view_number_details

> Get Phone Number Details


```ruby
def view_number_details(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Get Phone number Detail |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.view_number_details(collect)

```


### <a name="release_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.release_number") release_number

> Release number from account


```ruby
def release_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be relase |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.release_number(collect)

```


### <a name="buy_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.buy_number") buy_number

> Buy Phone Number 


```ruby
def buy_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be purchase |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.buy_number(collect)

```


### <a name="update_phone_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.update_phone_number") update_phone_number

> Update Phone Number Details


```ruby
def update_phone_number(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | The phone number to update |
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
| sms_fallback_url |  ``` Optional ```  | URL requested once the call connects |
| sms_fallback_method |  ``` Optional ```  | URL requested if the sms URL is not available |


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

voice_method = Message360::HttpActionEnum::GET
collect['voice_method'] = voice_method

voice_fallback_url = 'VoiceFallbackUrl'
collect['voice_fallback_url'] = voice_fallback_url

voice_fallback_method = Message360::HttpActionEnum::GET
collect['voice_fallback_method'] = voice_fallback_method

hangup_callback = 'HangupCallback'
collect['hangup_callback'] = hangup_callback

hangup_callback_method = Message360::HttpActionEnum::GET
collect['hangup_callback_method'] = hangup_callback_method

heartbeat_url = 'HeartbeatUrl'
collect['heartbeat_url'] = heartbeat_url

heartbeat_method = Message360::HttpActionEnum::GET
collect['heartbeat_method'] = heartbeat_method

sms_url = 'SmsUrl'
collect['sms_url'] = sms_url

sms_method = Message360::HttpActionEnum::GET
collect['sms_method'] = sms_method

sms_fallback_url = 'SmsFallbackUrl'
collect['sms_fallback_url'] = sms_fallback_url

sms_fallback_method = Message360::HttpActionEnum::GET
collect['sms_fallback_method'] = sms_fallback_method


result = phoneNumber.update_phone_number(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance

The singleton instance of the ``` UsageController ``` class can be accessed from the API Client.

```ruby
usage = client.usage
```

### <a name="list_usage"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.list_usage") list_usage

> Get all usage 


```ruby
def list_usage(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| product_code |  ``` Optional ```  ``` DefaultValue ```  | Product Code |
| start_date |  ``` Optional ```  ``` DefaultValue ```  | Start Usage Date |
| end_date |  ``` Optional ```  ``` DefaultValue ```  | End Usage Date |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

product_code = Message360::ProductCodeEnum::ALL
collect['product_code'] = product_code

start_date = '2016-09-06'
collect['start_date'] = start_date

end_date = '2016-09-06'
collect['end_date'] = end_date


result = usage.list_usage(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="web_rtc_controller"></a>![Class: ](https://apidocs.io/img/class.png ".WebRTCController") WebRTCController

### Get singleton instance

The singleton instance of the ``` WebRTCController ``` class can be accessed from the API Client.

```ruby
webRTC = client.web_rtc
```

### <a name="check_funds"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.check_funds") check_funds

> TODO: Add a method description


```ruby
def check_funds(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_sid |  ``` Required ```  | Your message360 Account SID |
| auth_token |  ``` Required ```  | Your message360 Token |


#### Example Usage

```ruby
collect = Hash.new

account_sid = 'account_sid'
collect['account_sid'] = account_sid

auth_token = 'auth_token'
collect['auth_token'] = auth_token


result = webRTC.check_funds(collect)

```


### <a name="create_token"></a>![Method: ](https://apidocs.io/img/method.png ".WebRTCController.create_token") create_token

> message360 webrtc


```ruby
def create_token(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_sid |  ``` Required ```  | Your message360 Account SID |
| auth_token |  ``` Required ```  | Your message360 Token |
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


result = webRTC.create_token(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance

The singleton instance of the ``` RecordingController ``` class can be accessed from the API Client.

```ruby
recording = client.recording
```

### <a name="view_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.view_recording") view_recording

> View a specific Recording


```ruby
def view_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Search Recording sid |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = recording.view_recording(collect)

```


### <a name="delete_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.delete_recording") delete_recording

> Delete Recording Record


```ruby
def delete_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording Sid to be delete |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = recording.delete_recording(collect)

```


### <a name="list_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.list_recording") list_recording

> List out Recordings


```ruby
def list_recording(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| date_created |  ``` Optional ```  | Recording date |
| call_sid |  ``` Optional ```  | Call ID |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

date_created = 'DateCreated'
collect['date_created'] = date_created

call_sid = 'CallSid'
collect['call_sid'] = call_sid


result = recording.list_recording(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email = client.email
```

### <a name="delete_spam"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_spam") delete_spam

> Deletes a email address marked as spam from the spam list


```ruby
def delete_spam(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | Email address |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

email = 'email'
collect['email'] = email


result = email.delete_spam(collect)

```


### <a name="delete_block"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_block") delete_block

> Deletes a blocked email


```ruby
def delete_block(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address to remove from block list |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.delete_block(collect)

```


### <a name="add_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.add_unsubscribes") add_unsubscribes

> Add an email to the unsubscribe list


```ruby
def add_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to add to the unsubscribe list |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.add_unsubscribes(collect)

```


### <a name="send_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.send_email") send_email

> Send out an email


```ruby
def send_email(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The to email address |
| from |  ``` Required ```  | The from email address |
| type |  ``` Required ```  ``` DefaultValue ```  | email format type, html or text |
| subject |  ``` Required ```  | Email subject |
| message |  ``` Required ```  | The body of the email message |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| cc |  ``` Optional ```  | CC Email address |
| bcc |  ``` Optional ```  | BCC Email address |
| attachment |  ``` Optional ```  | File to be attached.File must be less than 7MB. |


#### Example Usage

```ruby
collect = Hash.new

to = 'to'
collect['to'] = to

from = 'from'
collect['from'] = from

type = Message360::SendEmailAsEnum::HTML
collect['type'] = type

subject = 'subject'
collect['subject'] = subject

message = 'message'
collect['message'] = message

response_type = 'json'
collect['response_type'] = response_type

cc = 'cc'
collect['cc'] = cc

bcc = 'bcc'
collect['bcc'] = bcc

attachment = 'attachment'
collect['attachment'] = attachment


result = email.send_email(collect)

```


### <a name="delete_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_unsubscribes") delete_unsubscribes

> Delete emails from the unsubscribe list


```ruby
def delete_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to remove from the unsubscribe list |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.delete_unsubscribes(collect)

```


### <a name="list_unsubscribes"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_unsubscribes") list_unsubscribes

> List all unsubscribed email addresses


```ruby
def list_unsubscribes(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | Starting record of the list |
| limit |  ``` Optional ```  | Maximum number of records to be returned |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'offset'
collect['offset'] = offset

limit = 'limit'
collect['limit'] = limit


result = email.list_unsubscribes(collect)

```


### <a name="list_invalid"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_invalid") list_invalid

> List out all invalid email addresses


```ruby
def list_invalid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offet |  ``` Optional ```  | Starting record for listing out emails |
| limit |  ``` Optional ```  | Maximum number of records to return |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offet = 'offet'
collect['offet'] = offet

limit = 'limit'
collect['limit'] = limit


result = email.list_invalid(collect)

```


### <a name="delete_bounces"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_bounces") delete_bounces

> Delete an email address from the bounced address list


```ruby
def delete_bounces(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| email |  ``` Required ```  | The email address to remove from the bounce list |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

email = 'email'
collect['email'] = email


result = email.delete_bounces(collect)

```


### <a name="list_bounces"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_bounces") list_bounces

> List out all email addresses that have bounced


```ruby
def list_bounces(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The record to start the list at |
| limit |  ``` Optional ```  | The maximum number of records to return |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'offset'
collect['offset'] = offset

limit = 'limit'
collect['limit'] = limit


result = email.list_bounces(collect)

```


### <a name="list_spam"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_spam") list_spam

> List out all email addresses marked as spam


```ruby
def list_spam(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | The record number to start the list at |
| limit |  ``` Optional ```  | Maximum number of records to return |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'offset'
collect['offset'] = offset

limit = 'limit'
collect['limit'] = limit


result = email.list_spam(collect)

```


### <a name="list_blocks"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.list_blocks") list_blocks

> Outputs email addresses on your blocklist


```ruby
def list_blocks(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| offset |  ``` Optional ```  | Where to start in the output list |
| limit |  ``` Optional ```  | Maximum number of records to return |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

offset = 'offset'
collect['offset'] = offset

limit = 'limit'
collect['limit'] = limit


result = email.list_blocks(collect)

```


### <a name="delete_invalid"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.delete_invalid") delete_invalid

> This endpoint allows you to delete entries in the Invalid Emails list.


```ruby
def delete_invalid(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email that was marked invalid |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Json or xml |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.delete_invalid(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS = client.sms
```

### <a name="send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.send_sms") send_sms

> Send an SMS from a message360 number


```ruby
def send_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | SMS enabled Message360 number to send this message from |
| to |  ``` Required ```  | Number to send the SMS to |
| body |  ``` Required ```  | Text Message To Send |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Optional ```  ``` DefaultValue ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |


#### Example Usage

```ruby
collect = Hash.new

from = 'from'
collect['from'] = from

to = 'to'
collect['to'] = to

body = 'body'
collect['body'] = body

response_type = 'json'
collect['response_type'] = response_type

method = Message360::HttpActionEnum::GET
collect['method'] = method

messagestatuscallback = 'messagestatuscallback'
collect['messagestatuscallback'] = messagestatuscallback

smartsms = false
collect['smartsms'] = smartsms


result = sMS.send_sms(collect)

```


### <a name="view_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.view_sms") view_sms

> View a Particular SMS


```ruby
def view_sms(options = {}); end
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


result = sMS.view_sms(collect)

```


### <a name="list_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.list_sms") list_sms

> List All SMS


```ruby
def list_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
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

from = 'from'
collect['from'] = from

to = 'to'
collect['to'] = to

datesent = 'datesent'
collect['datesent'] = datesent


result = sMS.list_sms(collect)

```


### <a name="list_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.list_inbound_sms") list_inbound_sms

> List All Inbound SMS


```ruby
def list_inbound_sms(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound SMS |
| to |  ``` Optional ```  | To Number to get Inbound SMS |
| date_sent |  ``` Optional ```  | Filter sms message objects by this date. |


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

to = 'to'
collect['to'] = to

date_sent = 'DateSent'
collect['date_sent'] = date_sent


result = sMS.list_inbound_sms(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance

The singleton instance of the ``` CallController ``` class can be accessed from the API Client.

```ruby
call = client.call
```

### <a name="make_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.make_call") make_call

> You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json


```ruby
def make_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fall_back_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fall_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heart_beat_url |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed tim |
| heart_beat_method |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) Message360 should wait while the call is ringing before canceling the call |
| play_dtmf |  ``` Optional ```  | DTMF Digits to play to the call once it connects. 0-9, #, or * |
| hide_caller_id |  ``` Optional ```  | Specifies if the caller id will be hidden |
| record |  ``` Optional ```  | Specifies if the call should be recorded |
| record_call_back_url |  ``` Optional ```  | Recording parameters will be sent here upon completion |
| record_call_back_method |  ``` Optional ```  | Method used to request the RecordCallback URL. |
| transcribe |  ``` Optional ```  | Specifies if the call recording should be transcribed |
| transcribe_call_back_url |  ``` Optional ```  | Transcription parameters will be sent here upon completion |
| if_machine |  ``` Optional ```  | How Message360 should handle the receiving numbers voicemail machine |
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

method = Message360::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Message360::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Message360::HttpActionEnum::GET
collect['fall_back_method'] = fall_back_method

heart_beat_url = 'HeartBeatUrl'
collect['heart_beat_url'] = heart_beat_url

heart_beat_method = Message360::HttpActionEnum::GET
collect['heart_beat_method'] = heart_beat_method

timeout = 233
collect['timeout'] = timeout

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

hide_caller_id = true
collect['hide_caller_id'] = hide_caller_id

record = true
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Message360::HttpActionEnum::GET
collect['record_call_back_method'] = record_call_back_method

transcribe = true
collect['transcribe'] = transcribe

transcribe_call_back_url = 'TranscribeCallBackUrl'
collect['transcribe_call_back_url'] = transcribe_call_back_url

if_machine = Message360::IfMachineEnum::CONTINUE
collect['if_machine'] = if_machine

if_machine_url = 'IfMachineUrl'
collect['if_machine_url'] = if_machine_url

if_machine_method = Message360::HttpActionEnum::GET
collect['if_machine_method'] = if_machine_method

feedback = true
collect['feedback'] = feedback

survey_id = 'SurveyId'
collect['survey_id'] = survey_id


result = call.make_call(collect)

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

length = 233
collect['length'] = length

direction = Message360::DirectionEnum::IN
collect['direction'] = direction

mix = true
collect['mix'] = mix


result = call.play_audio(collect)

```


### <a name="record_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.record_call") record_call

> Record a Call


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

record = true
collect['record'] = record

response_type = 'json'
collect['response_type'] = response_type

direction = Message360::DirectionEnum::IN
collect['direction'] = direction

time_limit = 233
collect['time_limit'] = time_limit

call_back_url = 'CallBackUrl'
collect['call_back_url'] = call_back_url

fileformat = Message360::AudioFormatEnum::MP3
collect['fileformat'] = fileformat


result = call.record_call(collect)

```


### <a name="voice_effect"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.voice_effect") voice_effect

> Voice Effect


```ruby
def voice_effect(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for the in-progress voice call. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| audio_direction |  ``` Optional ```  | The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream. |
| pitch_semi_tones |  ``` Optional ```  | value between -14 and 14 |
| pitch_octaves |  ``` Optional ```  | value between -1 and 1 |
| pitch |  ``` Optional ```  | value greater than 0 |
| rate |  ``` Optional ```  | value greater than 0 |
| tempo |  ``` Optional ```  | value greater than 0 |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

response_type = 'json'
collect['response_type'] = response_type

audio_direction = Message360::AudioDirectionEnum::IN
collect['audio_direction'] = audio_direction

pitch_semi_tones = 233.233573817757
collect['pitch_semi_tones'] = pitch_semi_tones

pitch_octaves = 233.233573817757
collect['pitch_octaves'] = pitch_octaves

pitch = 233.233573817757
collect['pitch'] = pitch

rate = 233.233573817757
collect['rate'] = rate

tempo = 233.233573817757
collect['tempo'] = tempo


result = call.voice_effect(collect)

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

play_dtmf_direction = Message360::DirectionEnum::IN
collect['play_dtmf_direction'] = play_dtmf_direction


result = call.send_digit(collect)

```


### <a name="interrupted_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.interrupted_call") interrupted_call

> Interrupt the Call by Call Sid


```ruby
def interrupted_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | Call SId |
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

method = Message360::HttpActionEnum::GET
collect['method'] = method

status = Message360::InterruptedCallStatusEnum::CANCELED
collect['status'] = status


result = call.interrupted_call(collect)

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
| status_call_back_url |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_method |  ``` Optional ```  | Specifies the HTTP methodlinkclass used to request StatusCallbackUrl. |
| fall_back_url |  ``` Optional ```  | URL requested if the initial Url parameter fails or encounters an error |
| fall_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| heart_beat_url |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed tim |
| heart_beat_method |  ``` Optional ```  | Specifies the HTTP method used to request HeartbeatUrl. |
| timeout |  ``` Optional ```  | Time (in seconds) Message360 should wait while the call is ringing before canceling the call |
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

group_confirm_file = Message360::AudioFormatEnum::MP3
collect['group_confirm_file'] = group_confirm_file

method = Message360::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Message360::HttpActionEnum::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Message360::HttpActionEnum::GET
collect['fall_back_method'] = fall_back_method

heart_beat_url = 'HeartBeatUrl'
collect['heart_beat_url'] = heart_beat_url

heart_beat_method = Message360::HttpActionEnum::GET
collect['heart_beat_method'] = heart_beat_method

timeout = 233
collect['timeout'] = timeout

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

hide_caller_id = 'HideCallerId'
collect['hide_caller_id'] = hide_caller_id

record = true
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Message360::HttpActionEnum::GET
collect['record_call_back_method'] = record_call_back_method

transcribe = true
collect['transcribe'] = transcribe

transcribe_call_back_url = 'TranscribeCallBackUrl'
collect['transcribe_call_back_url'] = transcribe_call_back_url


result = call.group_call(collect)

```


### <a name="list_calls"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.list_calls") list_calls

> A list of calls associated with your Message360 account


```ruby
def list_calls(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Only list calls to this number |
| from |  ``` Optional ```  | Only list calls from this number |
| date_created |  ``` Optional ```  | Only list calls starting within the specified date range |


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


result = call.list_calls(collect)

```


### <a name="send_ringless_vm"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.send_ringless_vm") send_ringless_vm

> API endpoint used to send a Ringless Voicemail


```ruby
def send_ringless_vm(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| rvm_caller_id |  ``` Required ```  | Alternate caller ID required for RVM |
| to |  ``` Required ```  | To number |
| voice_mail_url |  ``` Required ```  | URL to an audio file |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| method |  ``` Optional ```  ``` DefaultValue ```  | Not currently used in this version |
| status_call_back_url |  ``` Optional ```  | URL to post the status of the Ringless request |
| stats_call_back_method |  ``` Optional ```  | POST or GET |


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

method = Message360::HttpActionEnum::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

stats_call_back_method = Message360::HttpActionEnum::GET
collect['stats_call_back_method'] = stats_call_back_method


result = call.send_ringless_vm(collect)

```


### <a name="view_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.view_call") view_call

> View Call Response


```ruby
def view_call(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | Call Sid id for particular Call |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

callsid = 'callsid'
collect['callsid'] = callsid

response_type = 'json'
collect['response_type'] = response_type


result = call.view_call(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance

The singleton instance of the ``` CarrierController ``` class can be accessed from the API Client.

```ruby
carrier = client.carrier
```

### <a name="carrier_lookup_list"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrier_lookup_list") carrier_lookup_list

> Get the All Purchase Number's Carrier lookup


```ruby
def carrier_lookup_list(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page Number |
| pagesize |  ``` Optional ```  ``` DefaultValue ```  | Page Size |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

pagesize = 10
collect['pagesize'] = pagesize


result = carrier.carrier_lookup_list(collect)

```


### <a name="carrier_lookup"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.carrier_lookup") carrier_lookup

> Get the Carrier Lookup


```ruby
def carrier_lookup(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | The number to lookup |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

phonenumber = 'phonenumber'
collect['phonenumber'] = phonenumber

response_type = 'json'
collect['response_type'] = response_type


result = carrier.carrier_lookup(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance

The singleton instance of the ``` AddressController ``` class can be accessed from the API Client.

```ruby
address = client.address
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


result = address.create_address(collect)

```


### <a name="view_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.view_address") view_address

> View Address Specific address Book by providing the address id


```ruby
def view_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| address_sid |  ``` Required ```  | The identifier of the address to be retrieved. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response Type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

address_sid = 'AddressSID'
collect['address_sid'] = address_sid

response_type = 'json'
collect['response_type'] = response_type


result = address.view_address(collect)

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
| page |  ``` Optional ```  ``` DefaultValue ```  | Return requested # of items starting the value, default=0, must be an integer |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | How many results to return, default is 10, max is 100, must be an integer |
| address_sid |  ``` Optional ```  | addresses Sid |
| date_created |  ``` Optional ```  | date created address. |


#### Example Usage

```ruby
collect = Hash.new

response_type = 'json'
collect['response_type'] = response_type

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size

address_sid = 'AddressSID'
collect['address_sid'] = address_sid

date_created = 'DateCreated'
collect['date_created'] = date_created


result = address.list_address(collect)

```


### <a name="verify_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.verify_address") verify_address

> Validates an address given.


```ruby
def verify_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| address_sid |  ``` Required ```  | The identifier of the address to be verified. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

address_sid = 'AddressSID'
collect['address_sid'] = address_sid

response_type = 'json'
collect['response_type'] = response_type


result = address.verify_address(collect)

```


### <a name="delete_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.delete_address") delete_address

> To delete Address to your address book


```ruby
def delete_address(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| address_sid |  ``` Required ```  | The identifier of the address to be deleted. |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type either json or xml |


#### Example Usage

```ruby
collect = Hash.new

address_sid = 'AddressSID'
collect['address_sid'] = address_sid

response_type = 'json'
collect['response_type'] = response_type


result = address.delete_address(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance

The singleton instance of the ``` SubAccountController ``` class can be accessed from the API Client.

```ruby
subAccount = client.sub_account
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

merge_number = Message360::MergeNumberStatusEnum::DELETE
collect['merge_number'] = merge_number

response_type = 'json'
collect['response_type'] = response_type


result = subAccount.delete_sub_account(collect)

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

activate = Message360::ActivateStatusEnum::DEACTIVATE
collect['activate'] = activate

response_type = 'json'
collect['response_type'] = response_type


result = subAccount.suspend_sub_account(collect)

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

response_type = 'json'
collect['response_type'] = response_type


result = subAccount.create_sub_account(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account = client.account
```

### <a name="view_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.view_account") view_account

> Display Account Description


```ruby
def view_account(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | TODO: Add a parameter description |
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

date = 'Date'
collect['date'] = date

response_type = 'json'
collect['response_type'] = response_type


result = account.view_account(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

### Get singleton instance

The singleton instance of the ``` ShortCodeController ``` class can be accessed from the API Client.

```ruby
shortCode = client.short_code
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
| method |  ``` Optional ```  | Callback status method, POST or GET |
| messagestatuscallback |  ``` Optional ```  | Callback url for SMS status |


#### Example Usage

```ruby
collect = Hash.new

shortcode = 69
collect['shortcode'] = shortcode

to = 69.7288557094191
collect['to'] = to

body = 'body'
collect['body'] = body

response_type = 'json'
collect['response_type'] = response_type

method = Message360::HttpActionEnum::GET
collect['method'] = method

messagestatuscallback = 'messagestatuscallback'
collect['messagestatuscallback'] = messagestatuscallback


result = shortCode.send_dedicated_shortcode(collect)

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


result = shortCode.view_shortcode(collect)

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

date_sent = DateTime.now
collect['date_sent'] = date_sent

page = 1
collect['page'] = page

page_size = 10
collect['page_size'] = page_size


result = shortCode.list_shortcode(collect)

```


### <a name="list_inbound_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.list_inbound_shortcode") list_inbound_shortcode

> Retrive a list of inbound Sms Short Code messages associated with your message360 account.


```ruby
def list_inbound_shortcode(options = {}); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response type format xml or json |
| page |  ``` Optional ```  ``` DefaultValue ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  ``` DefaultValue ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| date_received |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |


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

shortcode = 'Shortcode'
collect['shortcode'] = shortcode

date_received = 'DateReceived'
collect['date_received'] = date_received


result = shortCode.list_inbound_shortcode(collect)

```


[Back to List of Controllers](#list_of_controllers)



