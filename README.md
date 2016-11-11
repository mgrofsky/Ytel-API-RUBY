#Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build message_360.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install message_360-2.0.gem ```

![Building Gem](http://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Message360-Ruby&workspaceName=Message360-Ruby&projectName=message_360&gemName=message_360&gemVer=2.0)

## How to Use

The following section explains how to use the Message360 Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](http://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](http://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](http://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the Message360 gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'message_360', '~> 2.0' ```

![Add references of the Gemfile](http://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](http://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](http://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](http://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](http://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Message360-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication and 
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| basic_auth_user_name | The username to use with basic authentication |
| basic_auth_password | The password to use with basic authentication |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
basic_auth_user_name = "basic_auth_user_name"; # The username to use with basic authentication
basic_auth_password = "basic_auth_password"; # The password to use with basic authentication

client = Message360::Message360Client.new(basic_auth_user_name, basic_auth_password)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](http://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=message360%20API%20V2-Ruby&workspaceName=Message360&projectName=message_360&gemName=message_360&gemVer=2.0&initLine=client%2520%253D%2520Message360Client.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [ConferenceController](#conference_controller)
* [TranscriptionController](#transcription_controller)
* [PhoneNumberController](#phone_number_controller)
* [UsageController](#usage_controller)
* [WebRTCController](#web_rtc_controller)
* [RecordingController](#recording_controller)
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [AccountController](#account_controller)
* [CallController](#call_controller)
* [CarrierController](#carrier_controller)

### <a name="conference_controller"></a>![Class: ](http://apidocs.io/img/class.png ".ConferenceController") ConferenceController

#### Get singleton instance

The singleton instance of the ``` ConferenceController ``` class can be accessed from the API Client.

```ruby
conference = client.conference
```

#### <a name="create_view_participant"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_view_participant") create_view_participant

> View Participant


```ruby
def create_view_participant(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | unique conference sid |
| participant_sid |  ``` Required ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

participant_sid = 'ParticipantSid'
collect['participant_sid'] = participant_sid

response_type = 'json'
collect['response_type'] = response_type


result = conference.create_view_participant(collect)

```


#### <a name="create_list_participant"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_list_participant") create_list_participant

> List Participant


```ruby
def create_list_participant(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | unique conference sid |
| page |  ``` Optional ```  | page number |
| pagesize |  ``` Optional ```  | TODO: Add a parameter description |
| muted |  ``` Optional ```  | TODO: Add a parameter description |
| deaf |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

conference_sid = 'ConferenceSid'
collect['conference_sid'] = conference_sid

page = 244
collect['page'] = page

pagesize = 244
collect['pagesize'] = pagesize

muted = true
collect['muted'] = muted

deaf = true
collect['deaf'] = deaf

response_type = 'json'
collect['response_type'] = response_type


result = conference.create_list_participant(collect)

```


#### <a name="add_participant"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.add_participant") add_participant

> Add Participant in conference 


```ruby
def add_participant(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | Unique Conference Sid |
| participantnumber |  ``` Required ```  | Particiant Number |
| tocountrycode |  ``` Required ```  | TODO: Add a parameter description |
| muted |  ``` Optional ```  | TODO: Add a parameter description |
| deaf |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

conferencesid = 'conferencesid'
collect['conferencesid'] = conferencesid

participantnumber = 'participantnumber'
collect['participantnumber'] = participantnumber

tocountrycode = 244
collect['tocountrycode'] = tocountrycode

muted = true
collect['muted'] = muted

deaf = true
collect['deaf'] = deaf

response_type = 'json'
collect['response_type'] = response_type


result = conference.add_participant(collect)

```


#### <a name="create_view_conference"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_view_conference") create_view_conference

> View Conference


```ruby
def create_view_conference(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | The unique identifier of each conference resource |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

conferencesid = 'conferencesid'
collect['conferencesid'] = conferencesid

response_type = 'json'
collect['response_type'] = response_type


result = conference.create_view_conference(collect)

```


#### <a name="create_list_conference"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_list_conference") create_list_conference

> List Conference


```ruby
def create_list_conference(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| friendly_name |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| status |  ``` Optional ```  | TODO: Add a parameter description |
| date_created |  ``` Optional ```  | TODO: Add a parameter description |
| date_updated |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 244
collect['page'] = page

page_size = 244
collect['page_size'] = page_size

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

status = Message360::InterruptedCallStatus::CANCELED
collect['status'] = status

date_created = 'DateCreated'
collect['date_created'] = date_created

date_updated = 'DateUpdated'
collect['date_updated'] = date_updated

response_type = 'json'
collect['response_type'] = response_type


result = conference.create_list_conference(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="transcription_controller"></a>![Class: ](http://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

#### Get singleton instance

The singleton instance of the ``` TranscriptionController ``` class can be accessed from the API Client.

```ruby
transcription = client.transcription
```

#### <a name="create_list_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_list_transcription") create_list_transcription

> Get All transcriptions


```ruby
def create_list_transcription(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | TODO: Add a parameter description |
| page_size |  ``` Optional ```  | TODO: Add a parameter description |
| status |  ``` Optional ```  | TODO: Add a parameter description |
| date_transcribed |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 244
collect['page'] = page

page_size = 244
collect['page_size'] = page_size

status = Message360::Status::INPROGRESS
collect['status'] = status

date_transcribed = 'DateTranscribed'
collect['date_transcribed'] = date_transcribed

response_type = 'json'
collect['response_type'] = response_type


result = transcription.create_list_transcription(collect)

```


#### <a name="create_view_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_view_transcription") create_view_transcription

> View Specific Transcriptions


```ruby
def create_view_transcription(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcription_sid |  ``` Required ```  | Unique Transcription ID |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

transcription_sid = 'TranscriptionSid'
collect['transcription_sid'] = transcription_sid

response_type = 'json'
collect['response_type'] = response_type


result = transcription.create_view_transcription(collect)

```


#### <a name="create_recording_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_recording_transcription") create_recording_transcription

> Recording Transcriptions


```ruby
def create_recording_transcription(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = transcription.create_recording_transcription(collect)

```


#### <a name="create_audio_url_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_audio_url_transcription") create_audio_url_transcription

> Audio URL Transcriptions


```ruby
def create_audio_url_transcription(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audio_url |  ``` Required ```  | Audio url |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

audio_url = 'AudioUrl'
collect['audio_url'] = audio_url

response_type = 'json'
collect['response_type'] = response_type


result = transcription.create_audio_url_transcription(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="phone_number_controller"></a>![Class: ](http://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

#### Get singleton instance

The singleton instance of the ``` PhoneNumberController ``` class can be accessed from the API Client.

```ruby
phoneNumber = client.phone_number
```

#### <a name="create_available_phone_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_available_phone_number") create_available_phone_number

> Available Phone Number


```ruby
def create_available_phone_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number_type |  ``` Required ```  | Number type either SMS,Voice or all |
| area_code |  ``` Required ```  | Phone Number Area Code |
| page_size |  ``` Optional ```  | Page Size |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

number_type = 'NumberType'
collect['number_type'] = number_type

area_code = 'AreaCode'
collect['area_code'] = area_code

page_size = 80
collect['page_size'] = page_size

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.create_available_phone_number(collect)

```


#### <a name="create_list_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_list_number") create_list_number

> List Account's Phone number details


```ruby
def create_list_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| number_type |  ``` Optional ```  | TODO: Add a parameter description |
| friendly_name |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 80
collect['page'] = page

page_size = 80
collect['page_size'] = page_size

number_type = 'NumberType'
collect['number_type'] = number_type

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.create_list_number(collect)

```


#### <a name="create_view_number_details"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_view_number_details") create_view_number_details

> Get Phone Number Details


```ruby
def create_view_number_details(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Get Phone number Detail |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.create_view_number_details(collect)

```


#### <a name="create_release_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_release_number") create_release_number

> Release number from account


```ruby
def create_release_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be relase |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.create_release_number(collect)

```


#### <a name="create_buy_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_buy_number") create_buy_number

> Buy Phone Number 


```ruby
def create_buy_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be purchase |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.create_buy_number(collect)

```


#### <a name="update_phone_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.update_phone_number") update_phone_number

> Update Phone Number Details


```ruby
def update_phone_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | TODO: Add a parameter description |
| friendly_name |  ``` Optional ```  | TODO: Add a parameter description |
| voice_url |  ``` Optional ```  | URL requested once the call connects |
| voice_method |  ``` Optional ```  | TODO: Add a parameter description |
| voice_fallback_url |  ``` Optional ```  | URL requested if the voice URL is not available |
| voice_fallback_method |  ``` Optional ```  | TODO: Add a parameter description |
| hangup_callback |  ``` Optional ```  | TODO: Add a parameter description |
| hangup_callback_method |  ``` Optional ```  | TODO: Add a parameter description |
| heartbeat_url |  ``` Optional ```  | URL requested once the call connects |
| heartbeat_method |  ``` Optional ```  | URL that can be requested every 60 seconds during the call to notify of elapsed time |
| sms_url |  ``` Optional ```  | URL requested when an SMS is received |
| sms_method |  ``` Optional ```  | TODO: Add a parameter description |
| sms_fallback_url |  ``` Optional ```  | URL requested once the call connects |
| sms_fallback_method |  ``` Optional ```  | URL requested if the sms URL is not available |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'PhoneNumber'
collect['phone_number'] = phone_number

friendly_name = 'FriendlyName'
collect['friendly_name'] = friendly_name

voice_url = 'VoiceUrl'
collect['voice_url'] = voice_url

voice_method = Message360::HttpAction::GET
collect['voice_method'] = voice_method

voice_fallback_url = 'VoiceFallbackUrl'
collect['voice_fallback_url'] = voice_fallback_url

voice_fallback_method = Message360::HttpAction::GET
collect['voice_fallback_method'] = voice_fallback_method

hangup_callback = 'HangupCallback'
collect['hangup_callback'] = hangup_callback

hangup_callback_method = Message360::HttpAction::GET
collect['hangup_callback_method'] = hangup_callback_method

heartbeat_url = 'HeartbeatUrl'
collect['heartbeat_url'] = heartbeat_url

heartbeat_method = Message360::HttpAction::GET
collect['heartbeat_method'] = heartbeat_method

sms_url = 'SmsUrl'
collect['sms_url'] = sms_url

sms_method = Message360::HttpAction::GET
collect['sms_method'] = sms_method

sms_fallback_url = 'SmsFallbackUrl'
collect['sms_fallback_url'] = sms_fallback_url

sms_fallback_method = Message360::HttpAction::GET
collect['sms_fallback_method'] = sms_fallback_method

response_type = 'json'
collect['response_type'] = response_type


result = phoneNumber.update_phone_number(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="usage_controller"></a>![Class: ](http://apidocs.io/img/class.png ".UsageController") UsageController

#### Get singleton instance

The singleton instance of the ``` UsageController ``` class can be accessed from the API Client.

```ruby
usage = client.usage
```

#### <a name="create_list_usage"></a>![Method: ](http://apidocs.io/img/method.png ".UsageController.create_list_usage") create_list_usage

> Get all usage 


```ruby
def create_list_usage(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| product_code |  ``` Required ```  ``` DefaultValue ```  | Product Code |
| start_date |  ``` Required ```  ``` DefaultValue ```  | Start Usage Date |
| end_date |  ``` Required ```  ``` DefaultValue ```  | End Usage Date |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

product_code = '0'
collect['product_code'] = product_code

start_date = '2016-09-06'
collect['start_date'] = start_date

end_date = '2016-09-06'
collect['end_date'] = end_date

response_type = 'json'
collect['response_type'] = response_type


result = usage.create_list_usage(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="web_rtc_controller"></a>![Class: ](http://apidocs.io/img/class.png ".WebRTCController") WebRTCController

#### Get singleton instance

The singleton instance of the ``` WebRTCController ``` class can be accessed from the API Client.

```ruby
webRTC = client.web_rtc
```

#### <a name="create_check_funds"></a>![Method: ](http://apidocs.io/img/method.png ".WebRTCController.create_check_funds") create_check_funds

> TODO: Add a method description


```ruby
def create_check_funds(options = Hash.new); end
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


webRTC.create_check_funds(collect)

```


#### <a name="create_authenticate_number"></a>![Method: ](http://apidocs.io/img/method.png ".WebRTCController.create_authenticate_number") create_authenticate_number

> Authenticate a message360 number for use


```ruby
def create_authenticate_number(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to authenticate for use |
| account_sid |  ``` Required ```  | Your message360 Account SID |
| auth_token |  ``` Required ```  | Your message360 token |


#### Example Usage

```ruby
collect = Hash.new

phone_number = 'phone_number'
collect['phone_number'] = phone_number

account_sid = 'account_sid'
collect['account_sid'] = account_sid

auth_token = 'auth_token'
collect['auth_token'] = auth_token


webRTC.create_authenticate_number(collect)

```


#### <a name="create_token"></a>![Method: ](http://apidocs.io/img/method.png ".WebRTCController.create_token") create_token

> message360 webrtc


```ruby
def create_token(options = Hash.new); end
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


webRTC.create_token(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="recording_controller"></a>![Class: ](http://apidocs.io/img/class.png ".RecordingController") RecordingController

#### Get singleton instance

The singleton instance of the ``` RecordingController ``` class can be accessed from the API Client.

```ruby
recording = client.recording
```

#### <a name="create_view_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_view_recording") create_view_recording

> View a specific Recording


```ruby
def create_view_recording(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Search Recording sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = recording.create_view_recording(collect)

```


#### <a name="create_delete_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_delete_recording") create_delete_recording

> Delete Recording Record


```ruby
def create_delete_recording(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording Sid to be delete |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

recording_sid = 'RecordingSid'
collect['recording_sid'] = recording_sid

response_type = 'json'
collect['response_type'] = response_type


result = recording.create_delete_recording(collect)

```


#### <a name="create_list_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_list_recording") create_list_recording

> List out Recordings


```ruby
def create_list_recording(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| date_created |  ``` Optional ```  | TODO: Add a parameter description |
| call_sid |  ``` Optional ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 80
collect['page'] = page

page_size = 80
collect['page_size'] = page_size

date_created = 'DateCreated'
collect['date_created'] = date_created

call_sid = 'CallSid'
collect['call_sid'] = call_sid

response_type = 'json'
collect['response_type'] = response_type


result = recording.create_list_recording(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="email_controller"></a>![Class: ](http://apidocs.io/img/class.png ".EmailController") EmailController

#### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email = client.email
```

#### <a name="create_delete_spam"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_spam") create_delete_spam

> Deletes a email address marked as spam from the spam list


```ruby
def create_delete_spam(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.create_delete_spam(collect)

```


#### <a name="create_delete_block"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_block") create_delete_block

> Deletes a blocked email


```ruby
def create_delete_block(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address to remove from block list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.create_delete_block(collect)

```


#### <a name="add_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.add_unsubscribes") add_unsubscribes

> Add an email to the unsubscribe list


```ruby
def add_unsubscribes(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to add to the unsubscribe list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.add_unsubscribes(collect)

```


#### <a name="create_send_email"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_send_email") create_send_email

> Send out an email


```ruby
def create_send_email(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The to email address |
| from |  ``` Required ```  | The from email address |
| type |  ``` Required ```  ``` DefaultValue ```  | email format type, html or text |
| subject |  ``` Required ```  | Email subject |
| message |  ``` Required ```  | The body of the email message |
| cc |  ``` Optional ```  | CC Email address |
| bcc |  ``` Optional ```  | BCC Email address |
| attachment |  ``` Optional ```  | File to be attached.File must be less than 7MB. |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

to = 'to'
collect['to'] = to

from = 'from'
collect['from'] = from

type = Message360::SendEmailAs::HTML
collect['type'] = type

subject = 'subject'
collect['subject'] = subject

message = 'message'
collect['message'] = message

cc = 'cc'
collect['cc'] = cc

bcc = 'bcc'
collect['bcc'] = bcc

attachment = 'attachment'
collect['attachment'] = attachment

response_type = 'json'
collect['response_type'] = response_type


result = email.create_send_email(collect)

```


#### <a name="create_delete_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_unsubscribes") create_delete_unsubscribes

> Delete emails from the unsubscribe list


```ruby
def create_delete_unsubscribes(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to remove from the unsubscribe list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.create_delete_unsubscribes(collect)

```


#### <a name="create_list_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_unsubscribes") create_list_unsubscribes

> List all unsubscribed email addresses


```ruby
def create_list_unsubscribes(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
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


result = email.create_list_unsubscribes(collect)

```


#### <a name="create_list_invalid"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_invalid") create_list_invalid

> List out all invalid email addresses


```ruby
def create_list_invalid(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
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


result = email.create_list_invalid(collect)

```


#### <a name="create_delete_bounces"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_bounces") create_delete_bounces

> Delete an email address from the bounced address list


```ruby
def create_delete_bounces(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to remove from the bounce list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

email = 'email'
collect['email'] = email

response_type = 'json'
collect['response_type'] = response_type


result = email.create_delete_bounces(collect)

```


#### <a name="create_list_bounces"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_bounces") create_list_bounces

> List out all email addresses that have bounced


```ruby
def create_list_bounces(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
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


result = email.create_list_bounces(collect)

```


#### <a name="create_list_spam"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_spam") create_list_spam

> List out all email addresses marked as spam


```ruby
def create_list_spam(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
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


result = email.create_list_spam(collect)

```


#### <a name="create_list_blocks"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_blocks") create_list_blocks

> Outputs email addresses on your blocklist


```ruby
def create_list_blocks(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | Where to start in the output list |
| limit |  ``` Optional ```  | Maximum number of records to return |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

offset = 'offset'
collect['offset'] = offset

limit = 'limit'
collect['limit'] = limit

response_type = 'json'
collect['response_type'] = response_type


result = email.create_list_blocks(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="sms_controller"></a>![Class: ](http://apidocs.io/img/class.png ".SMSController") SMSController

#### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS = client.sms
```

#### <a name="create_send_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_send_sms") create_send_sms

> Send an SMS from a message360 number


```ruby
def create_send_sms(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fromcountrycode |  ``` Required ```  ``` DefaultValue ```  | From Country Code |
| from |  ``` Required ```  | SMS enabled Message360 number to send this message from |
| tocountrycode |  ``` Required ```  ``` DefaultValue ```  | To country code |
| to |  ``` Required ```  | Number to send the SMS to |
| body |  ``` Required ```  | Text Message To Send |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

fromcountrycode = 1
collect['fromcountrycode'] = fromcountrycode

from = 'from'
collect['from'] = from

tocountrycode = 1
collect['tocountrycode'] = tocountrycode

to = 'to'
collect['to'] = to

body = 'body'
collect['body'] = body

method = Message360::HttpAction::GET
collect['method'] = method

messagestatuscallback = 'messagestatuscallback'
collect['messagestatuscallback'] = messagestatuscallback

response_type = 'json'
collect['response_type'] = response_type


result = sMS.create_send_sms(collect)

```


#### <a name="create_view_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_view_sms") create_view_sms

> View Particular SMS


```ruby
def create_view_sms(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

messagesid = 'messagesid'
collect['messagesid'] = messagesid

response_type = 'json'
collect['response_type'] = response_type


result = sMS.create_view_sms(collect)

```


#### <a name="create_list_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_list_sms") create_list_sms

> List All SMS


```ruby
def create_list_sms(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Messages sent from this number |
| to |  ``` Optional ```  | Messages sent to this number |
| datesent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 172
collect['page'] = page

pagesize = 172
collect['pagesize'] = pagesize

from = 'from'
collect['from'] = from

to = 'to'
collect['to'] = to

datesent = 'datesent'
collect['datesent'] = datesent

response_type = 'json'
collect['response_type'] = response_type


result = sMS.create_list_sms(collect)

```


#### <a name="create_list_inbound_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_list_inbound_sms") create_list_inbound_sms

> List All Inbound SMS


```ruby
def create_list_inbound_sms(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound SMS |
| to |  ``` Optional ```  | To Number to get Inbound SMS |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 172
collect['page'] = page

pagesize = 'pagesize'
collect['pagesize'] = pagesize

from = 'from'
collect['from'] = from

to = 'to'
collect['to'] = to

response_type = 'json'
collect['response_type'] = response_type


result = sMS.create_list_inbound_sms(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="account_controller"></a>![Class: ](http://apidocs.io/img/class.png ".AccountController") AccountController

#### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account = client.account
```

#### <a name="create_view_account"></a>![Method: ](http://apidocs.io/img/method.png ".AccountController.create_view_account") create_view_account

> Display Account Description


```ruby
def create_view_account(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
collect = Hash.new

date = 'date'
collect['date'] = date

response_type = 'json'
collect['response_type'] = response_type


result = account.create_view_account(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="call_controller"></a>![Class: ](http://apidocs.io/img/class.png ".CallController") CallController

#### Get singleton instance

The singleton instance of the ``` CallController ``` class can be accessed from the API Client.

```ruby
call = client.call
```

#### <a name="create_view_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_view_call") create_view_call

> View Call Response


```ruby
def create_view_call(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | Call Sid id for particular Call |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

callsid = 'callsid'
collect['callsid'] = callsid

response_type = 'json'
collect['response_type'] = response_type


result = call.create_view_call(collect)

```


#### <a name="create_make_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_make_call") create_make_call

> You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json


```ruby
def create_make_call(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from_country_code |  ``` Required ```  | from country code |
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to_country_code |  ``` Required ```  | To cuntry code number |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
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
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

from_country_code = 'FromCountryCode'
collect['from_country_code'] = from_country_code

from = 'From'
collect['from'] = from

to_country_code = 'ToCountryCode'
collect['to_country_code'] = to_country_code

to = 'To'
collect['to'] = to

url = 'Url'
collect['url'] = url

method = Message360::HttpAction::GET
collect['method'] = method

status_call_back_url = 'StatusCallBackUrl'
collect['status_call_back_url'] = status_call_back_url

status_call_back_method = Message360::HttpAction::GET
collect['status_call_back_method'] = status_call_back_method

fall_back_url = 'FallBackUrl'
collect['fall_back_url'] = fall_back_url

fall_back_method = Message360::HttpAction::GET
collect['fall_back_method'] = fall_back_method

heart_beat_url = 'HeartBeatUrl'
collect['heart_beat_url'] = heart_beat_url

heart_beat_method = true
collect['heart_beat_method'] = heart_beat_method

timeout = 172
collect['timeout'] = timeout

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

hide_caller_id = true
collect['hide_caller_id'] = hide_caller_id

record = true
collect['record'] = record

record_call_back_url = 'RecordCallBackUrl'
collect['record_call_back_url'] = record_call_back_url

record_call_back_method = Message360::HttpAction::GET
collect['record_call_back_method'] = record_call_back_method

transcribe = true
collect['transcribe'] = transcribe

transcribe_call_back_url = 'TranscribeCallBackUrl'
collect['transcribe_call_back_url'] = transcribe_call_back_url

if_machine = Message360::IfMachine::CONTINUE
collect['if_machine'] = if_machine

response_type = 'json'
collect['response_type'] = response_type


result = call.create_make_call(collect)

```


#### <a name="create_play_audio"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_play_audio") create_play_audio

> Play Dtmf and send the Digit


```ruby
def create_play_audio(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| length |  ``` Required ```  | Time limit in seconds for audio play back |
| direction |  ``` Required ```  | The leg of the call audio will be played to |
| loop |  ``` Required ```  | Repeat audio playback indefinitely |
| mix |  ``` Required ```  | If false, all other audio will be muted |
| call_sid |  ``` Optional ```  | The unique identifier of each call resource |
| audio_url |  ``` Optional ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

length = 172
collect['length'] = length

direction = Message360::Direction::IN
collect['direction'] = direction

loop = true
collect['loop'] = loop

mix = true
collect['mix'] = mix

call_sid = 'CallSid'
collect['call_sid'] = call_sid

audio_url = 'AudioUrl'
collect['audio_url'] = audio_url

response_type = 'json'
collect['response_type'] = response_type


result = call.create_play_audio(collect)

```


#### <a name="create_record_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_record_call") create_record_call

> Record a Call


```ruby
def create_record_call(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| record |  ``` Required ```  | Set true to initiate recording or false to terminate recording |
| direction |  ``` Optional ```  | The leg of the call to record |
| time_limit |  ``` Optional ```  | Time in seconds the recording duration should not exceed |
| call_back_url |  ``` Optional ```  | URL consulted after the recording completes |
| fileformat |  ``` Optional ```  | Format of the recording file. Can be .mp3 or .wav |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

record = true
collect['record'] = record

direction = Message360::Direction::IN
collect['direction'] = direction

time_limit = 172
collect['time_limit'] = time_limit

call_back_url = 'CallBackUrl'
collect['call_back_url'] = call_back_url

fileformat = Message360::AudioFormat::MP3
collect['fileformat'] = fileformat

response_type = 'json'
collect['response_type'] = response_type


result = call.create_record_call(collect)

```


#### <a name="create_voice_effect"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_voice_effect") create_voice_effect

> Voice Effect


```ruby
def create_voice_effect(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | TODO: Add a parameter description |
| audio_direction |  ``` Optional ```  | TODO: Add a parameter description |
| pitch_semi_tones |  ``` Optional ```  | value between -14 and 14 |
| pitch_octaves |  ``` Optional ```  | value between -1 and 1 |
| pitch |  ``` Optional ```  | value greater than 0 |
| rate |  ``` Optional ```  | value greater than 0 |
| tempo |  ``` Optional ```  | value greater than 0 |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

audio_direction = Message360::AudioDirection::IN
collect['audio_direction'] = audio_direction

pitch_semi_tones = 172.323244420031
collect['pitch_semi_tones'] = pitch_semi_tones

pitch_octaves = 172.323244420031
collect['pitch_octaves'] = pitch_octaves

pitch = 172.323244420031
collect['pitch'] = pitch

rate = 172.323244420031
collect['rate'] = rate

tempo = 172.323244420031
collect['tempo'] = tempo

response_type = 'json'
collect['response_type'] = response_type


result = call.create_voice_effect(collect)

```


#### <a name="create_send_digit"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_send_digit") create_send_digit

> Play Dtmf and send the Digit


```ruby
def create_send_digit(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| play_dtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| play_dtmf_direction |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

play_dtmf = 'PlayDtmf'
collect['play_dtmf'] = play_dtmf

play_dtmf_direction = Message360::Direction::IN
collect['play_dtmf_direction'] = play_dtmf_direction

response_type = 'json'
collect['response_type'] = response_type


result = call.create_send_digit(collect)

```


#### <a name="create_interrupted_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_interrupted_call") create_interrupted_call

> Interrupt the Call by Call Sid


```ruby
def create_interrupted_call(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | Call SId |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

call_sid = 'CallSid'
collect['call_sid'] = call_sid

url = 'Url'
collect['url'] = url

method = Message360::HttpAction::GET
collect['method'] = method

status = Message360::InterruptedCallStatus::CANCELED
collect['status'] = status

response_type = 'json'
collect['response_type'] = response_type


result = call.create_interrupted_call(collect)

```


#### <a name="create_list_calls"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_list_calls") create_list_calls

> A list of calls associated with your Message360 account


```ruby
def create_list_calls(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Zero indexed |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Only list calls to this number |
| from |  ``` Optional ```  | Only list calls from this number |
| date_created |  ``` Optional ```  | Only list calls starting within the specified date range |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 'Page'
collect['page'] = page

page_size = 'PageSize'
collect['page_size'] = page_size

to = 'To'
collect['to'] = to

from = 'From'
collect['from'] = from

date_created = 'DateCreated'
collect['date_created'] = date_created

response_type = 'json'
collect['response_type'] = response_type


call.create_list_calls(collect)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="carrier_controller"></a>![Class: ](http://apidocs.io/img/class.png ".CarrierController") CarrierController

#### Get singleton instance

The singleton instance of the ``` CarrierController ``` class can be accessed from the API Client.

```ruby
carrier = client.carrier
```

#### <a name="create_carrier_lookup"></a>![Method: ](http://apidocs.io/img/method.png ".CarrierController.create_carrier_lookup") create_carrier_lookup

> Get the Carrier Lookup


```ruby
def create_carrier_lookup(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | The number to lookup |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

phonenumber = 'phonenumber'
collect['phonenumber'] = phonenumber

response_type = 'json'
collect['response_type'] = response_type


result = carrier.create_carrier_lookup(collect)

```


#### <a name="create_carrier_lookup_list"></a>![Method: ](http://apidocs.io/img/method.png ".CarrierController.create_carrier_lookup_list") create_carrier_lookup_list

> Get the All Purchase Number's Carrier lookup


```ruby
def create_carrier_lookup_list(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page Number |
| pagesize |  ``` Optional ```  | Page Size |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
collect = Hash.new

page = 'page'
collect['page'] = page

pagesize = 'pagesize'
collect['pagesize'] = pagesize

response_type = 'json'
collect['response_type'] = response_type


result = carrier.create_carrier_lookup_list(collect)

```


[Back to List of Controllers](#list_of_controllers)



