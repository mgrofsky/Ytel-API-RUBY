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
* [EmailController](#email_controller)
* [SMSController](#sms_controller)
* [AccountController](#account_controller)
* [RecordingController](#recording_controller)
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
def create_view_participant(conference_sid, 
                                participant_sid, 
                                response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | unique conference sid |
| participant_sid |  ``` Required ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'
participant_sid = 'ParticipantSid'
response_type = 'json'

result = conference.create_view_participant(conference_sid, participant_sid, response_type)

```


#### <a name="create_list_participant"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_list_participant") create_list_participant

> List Participant


```ruby
def create_list_participant(conference_sid, 
                                page = nil, 
                                pagesize = nil, 
                                muted = nil, 
                                deaf = nil, 
                                response_type = 'json'); end
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
conference_sid = 'ConferenceSid'
page = 95
pagesize = 95
muted = false
deaf = false
response_type = 'json'

result = conference.create_list_participant(conference_sid, page, pagesize, muted, deaf, response_type)

```


#### <a name="add_participant"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.add_participant") add_participant

> Add Participant in conference 


```ruby
def add_participant(conferencesid, 
                        participantnumber, 
                        tocountrycode, 
                        muted = nil, 
                        deaf = nil, 
                        response_type = 'json'); end
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
conferencesid = 'conferencesid'
participantnumber = 'participantnumber'
tocountrycode = 95
muted = false
deaf = false
response_type = 'json'

result = conference.add_participant(conferencesid, participantnumber, tocountrycode, muted, deaf, response_type)

```


#### <a name="create_view_conference"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_view_conference") create_view_conference

> View Conference


```ruby
def create_view_conference(conferencesid, 
                               response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conferencesid |  ``` Required ```  | The unique identifier of each conference resource |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
conferencesid = 'conferencesid'
response_type = 'json'

result = conference.create_view_conference(conferencesid, response_type)

```


#### <a name="create_list_conference"></a>![Method: ](http://apidocs.io/img/method.png ".ConferenceController.create_list_conference") create_list_conference

> List Conference


```ruby
def create_list_conference(page = nil, 
                               page_size = nil, 
                               friendly_name = nil, 
                               status = nil, 
                               date_created = nil, 
                               date_updated = nil, 
                               response_type = 'json'); end
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
page = 95
page_size = 95
friendly_name = 'FriendlyName'
status = Message360::InterruptedCallStatus::CANCELED
date_created = 'DateCreated'
date_updated = 'DateUpdated'
response_type = 'json'

result = conference.create_list_conference(page, page_size, friendly_name, status, date_created, date_updated, response_type)

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
def create_list_transcription(page = nil, 
                                  page_size = nil, 
                                  status = nil, 
                                  date_transcribed = nil, 
                                  response_type = 'json'); end
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
page = 95
page_size = 95
status = Message360::Status::INPROGRESS
date_transcribed = 'DateTranscribed'
response_type = 'json'

result = transcription.create_list_transcription(page, page_size, status, date_transcribed, response_type)

```


#### <a name="create_recording_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_recording_transcription") create_recording_transcription

> Recording Transcriptions


```ruby
def create_recording_transcription(recording_sid, 
                                       response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
recording_sid = 'RecordingSid'
response_type = 'json'

result = transcription.create_recording_transcription(recording_sid, response_type)

```


#### <a name="create_view_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_view_transcription") create_view_transcription

> View Specific Transcriptions


```ruby
def create_view_transcription(transcription_sid, 
                                  response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcription_sid |  ``` Required ```  | Unique Transcription ID |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
transcription_sid = 'TranscriptionSid'
response_type = 'json'

result = transcription.create_view_transcription(transcription_sid, response_type)

```


#### <a name="create_audio_url_transcription"></a>![Method: ](http://apidocs.io/img/method.png ".TranscriptionController.create_audio_url_transcription") create_audio_url_transcription

> Audio URL Transcriptions


```ruby
def create_audio_url_transcription(audio_url, 
                                       response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audio_url |  ``` Required ```  | Audio url |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
audio_url = 'AudioUrl'
response_type = 'json'

result = transcription.create_audio_url_transcription(audio_url, response_type)

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
def create_available_phone_number(number_type, 
                                      area_code, 
                                      page_size = nil, 
                                      response_type = 'json'); end
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
number_type = 'NumberType'
area_code = 'AreaCode'
page_size = 53
response_type = 'json'

result = phoneNumber.create_available_phone_number(number_type, area_code, page_size, response_type)

```


#### <a name="create_list_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_list_number") create_list_number

> List Account's Phone number details


```ruby
def create_list_number(page = nil, 
                           page_size = nil, 
                           number_type = nil, 
                           friendly_name = nil, 
                           response_type = 'json'); end
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
page = 53
page_size = 53
number_type = 'NumberType'
friendly_name = 'FriendlyName'
response_type = 'json'

result = phoneNumber.create_list_number(page, page_size, number_type, friendly_name, response_type)

```


#### <a name="create_release_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_release_number") create_release_number

> Release number from account


```ruby
def create_release_number(phone_number, 
                              response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be relase |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'
response_type = 'json'

result = phoneNumber.create_release_number(phone_number, response_type)

```


#### <a name="create_buy_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_buy_number") create_buy_number

> Buy Phone Number 


```ruby
def create_buy_number(phone_number, 
                          response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Phone number to be purchase |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'
response_type = 'json'

result = phoneNumber.create_buy_number(phone_number, response_type)

```


#### <a name="create_view_number_details"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.create_view_number_details") create_view_number_details

> Get Phone Number Details


```ruby
def create_view_number_details(phone_number, 
                                   response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | Get Phone number Detail |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'
response_type = 'json'

result = phoneNumber.create_view_number_details(phone_number, response_type)

```


#### <a name="update_phone_number"></a>![Method: ](http://apidocs.io/img/method.png ".PhoneNumberController.update_phone_number") update_phone_number

> Update Phone Number Details


```ruby
def update_phone_number(phone_number, 
                            friendly_name = nil, 
                            voice_url = nil, 
                            voice_method = nil, 
                            voice_fallback_url = nil, 
                            voice_fallback_method = nil, 
                            hangup_callback = nil, 
                            hangup_callback_method = nil, 
                            heartbeat_url = nil, 
                            heartbeat_method = nil, 
                            sms_url = nil, 
                            sms_method = nil, 
                            sms_fallback_url = nil, 
                            sms_fallback_method = nil, 
                            response_type = 'json'); end
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
phone_number = 'PhoneNumber'
friendly_name = 'FriendlyName'
voice_url = 'VoiceUrl'
voice_method = Message360::HttpAction::GET
voice_fallback_url = 'VoiceFallbackUrl'
voice_fallback_method = Message360::HttpAction::GET
hangup_callback = 'HangupCallback'
hangup_callback_method = Message360::HttpAction::GET
heartbeat_url = 'HeartbeatUrl'
heartbeat_method = Message360::HttpAction::GET
sms_url = 'SmsUrl'
sms_method = Message360::HttpAction::GET
sms_fallback_url = 'SmsFallbackUrl'
sms_fallback_method = Message360::HttpAction::GET
response_type = 'json'

result = phoneNumber.update_phone_number(phone_number, friendly_name, voice_url, voice_method, voice_fallback_url, voice_fallback_method, hangup_callback, hangup_callback_method, heartbeat_url, heartbeat_method, sms_url, sms_method, sms_fallback_url, sms_fallback_method, response_type)

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
def create_list_usage(product_code, 
                          start_date, 
                          end_date, 
                          response_type = 'json'); end
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
product_code = '0'
start_date = '2016-09-06'
end_date = '2016-09-06'
response_type = 'json'

result = usage.create_list_usage(product_code, start_date, end_date, response_type)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="email_controller"></a>![Class: ](http://apidocs.io/img/class.png ".EmailController") EmailController

#### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email = client.email
```

#### <a name="create_send_email"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_send_email") create_send_email

> Send out an email


```ruby
def create_send_email(to, 
                          from, 
                          type, 
                          subject, 
                          message, 
                          cc = nil, 
                          bcc = nil, 
                          attachment = nil, 
                          response_type = 'json'); end
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
to = 'to'
from = 'from'
type = Message360::SendEmailAs::HTML
subject = 'subject'
message = 'message'
cc = 'cc'
bcc = 'bcc'
attachment = 'attachment'
response_type = 'json'

result = email.create_send_email(to, from, type, subject, message, cc, bcc, attachment, response_type)

```


#### <a name="create_delete_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_unsubscribes") create_delete_unsubscribes

> Delete emails from the unsubscribe list


```ruby
def create_delete_unsubscribes(email, 
                                   response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to remove from the unsubscribe list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
email = 'email'
response_type = 'json'

result = email.create_delete_unsubscribes(email, response_type)

```


#### <a name="create_list_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_unsubscribes") create_list_unsubscribes

> List all unsubscribed email addresses


```ruby
def create_list_unsubscribes(response_type = 'json', 
                                 offset = nil, 
                                 limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
| offset |  ``` Optional ```  | Starting record of the list |
| limit |  ``` Optional ```  | Maximum number of records to be returned |


#### Example Usage

```ruby
response_type = 'json'
offset = 'offset'
limit = 'limit'

result = email.create_list_unsubscribes(response_type, offset, limit)

```


#### <a name="add_unsubscribes"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.add_unsubscribes") add_unsubscribes

> Add an email to the unsubscribe list


```ruby
def add_unsubscribes(email, 
                         response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email to add to the unsubscribe list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
email = 'email'
response_type = 'json'

result = email.add_unsubscribes(email, response_type)

```


#### <a name="create_delete_spam"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_spam") create_delete_spam

> Deletes a email address marked as spam from the spam list


```ruby
def create_delete_spam(email, 
                           response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
email = 'email'
response_type = 'json'

result = email.create_delete_spam(email, response_type)

```


#### <a name="create_delete_block"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_block") create_delete_block

> Deletes a blocked email


```ruby
def create_delete_block(email, 
                            response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email address to remove from block list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
email = 'email'
response_type = 'json'

result = email.create_delete_block(email, response_type)

```


#### <a name="create_list_invalid"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_invalid") create_list_invalid

> List out all invalid email addresses


```ruby
def create_list_invalid(response_type = 'json', 
                            offet = nil, 
                            limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
| offet |  ``` Optional ```  | Starting record for listing out emails |
| limit |  ``` Optional ```  | Maximum number of records to return |


#### Example Usage

```ruby
response_type = 'json'
offet = 'offet'
limit = 'limit'

result = email.create_list_invalid(response_type, offet, limit)

```


#### <a name="create_delete_bounces"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_delete_bounces") create_delete_bounces

> Delete an email address from the bounced address list


```ruby
def create_delete_bounces(email, 
                              response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to remove from the bounce list |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
email = 'email'
response_type = 'json'

result = email.create_delete_bounces(email, response_type)

```


#### <a name="create_list_bounces"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_bounces") create_list_bounces

> List out all email addresses that have bounced


```ruby
def create_list_bounces(response_type = 'json', 
                            offset = nil, 
                            limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |
| offset |  ``` Optional ```  | The record to start the list at |
| limit |  ``` Optional ```  | The maximum number of records to return |


#### Example Usage

```ruby
response_type = 'json'
offset = 'offset'
limit = 'limit'

result = email.create_list_bounces(response_type, offset, limit)

```


#### <a name="create_list_spam"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_spam") create_list_spam

> List out all email addresses marked as spam


```ruby
def create_list_spam(response_type, 
                         offset = nil, 
                         limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  ``` DefaultValue ```  | Response format, xml or json |
| offset |  ``` Optional ```  | The record number to start the list at |
| limit |  ``` Optional ```  | Maximum number of records to return |


#### Example Usage

```ruby
response_type = 'json'
offset = 'offset'
limit = 'limit'

result = email.create_list_spam(response_type, offset, limit)

```


#### <a name="create_list_blocks"></a>![Method: ](http://apidocs.io/img/method.png ".EmailController.create_list_blocks") create_list_blocks

> Outputs email addresses on your blocklist


```ruby
def create_list_blocks(offset = nil, 
                           limit = nil, 
                           response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | Where to start in the output list |
| limit |  ``` Optional ```  | Maximum number of records to return |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
offset = 'offset'
limit = 'limit'
response_type = 'json'

result = email.create_list_blocks(offset, limit, response_type)

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
def create_send_sms(fromcountrycode, 
                        from, 
                        tocountrycode, 
                        to, 
                        body, 
                        method = nil, 
                        messagestatuscallback = nil, 
                        response_type = 'json'); end
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
fromcountrycode = 1
from = 'from'
tocountrycode = 1
to = 'to'
body = 'body'
method = Message360::HttpAction::GET
messagestatuscallback = 'messagestatuscallback'
response_type = 'json'

result = sMS.create_send_sms(fromcountrycode, from, tocountrycode, to, body, method, messagestatuscallback, response_type)

```


#### <a name="create_view_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_view_sms") create_view_sms

> View Particular SMS


```ruby
def create_view_sms(messagesid, 
                        response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| messagesid |  ``` Required ```  | Message sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
messagesid = 'messagesid'
response_type = 'json'

result = sMS.create_view_sms(messagesid, response_type)

```


#### <a name="create_list_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_list_sms") create_list_sms

> List All SMS


```ruby
def create_list_sms(page = nil, 
                        pagesize = nil, 
                        from = nil, 
                        to = nil, 
                        datesent = nil, 
                        response_type = 'json'); end
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
page = 145
pagesize = 145
from = 'from'
to = 'to'
datesent = 'datesent'
response_type = 'json'

result = sMS.create_list_sms(page, pagesize, from, to, datesent, response_type)

```


#### <a name="create_list_inbound_sms"></a>![Method: ](http://apidocs.io/img/method.png ".SMSController.create_list_inbound_sms") create_list_inbound_sms

> List All Inbound SMS


```ruby
def create_list_inbound_sms(page = nil, 
                                pagesize = nil, 
                                from = nil, 
                                to = nil, 
                                response_type = 'json'); end
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
page = 145
pagesize = 'pagesize'
from = 'from'
to = 'to'
response_type = 'json'

result = sMS.create_list_inbound_sms(page, pagesize, from, to, response_type)

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
def create_view_account(date, 
                            response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | TODO: Add a parameter description |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response type format xml or json |


#### Example Usage

```ruby
date = 'date'
response_type = 'json'

result = account.create_view_account(date, response_type)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="recording_controller"></a>![Class: ](http://apidocs.io/img/class.png ".RecordingController") RecordingController

#### Get singleton instance

The singleton instance of the ``` RecordingController ``` class can be accessed from the API Client.

```ruby
recording = client.recording
```

#### <a name="create_delete_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_delete_recording") create_delete_recording

> Delete Recording Record


```ruby
def create_delete_recording(recording_sid, 
                                response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Unique Recording Sid to be delete |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
recording_sid = 'RecordingSid'
response_type = 'json'

result = recording.create_delete_recording(recording_sid, response_type)

```


#### <a name="create_view_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_view_recording") create_view_recording

> View a specific Recording


```ruby
def create_view_recording(recording_sid, 
                              response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | Search Recording sid |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
recording_sid = 'RecordingSid'
response_type = 'json'

result = recording.create_view_recording(recording_sid, response_type)

```


#### <a name="create_list_recording"></a>![Method: ](http://apidocs.io/img/method.png ".RecordingController.create_list_recording") create_list_recording

> List out Recordings


```ruby
def create_list_recording(page = nil, 
                              page_size = nil, 
                              date_created = nil, 
                              call_sid = nil, 
                              response_type = 'json'); end
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
page = 145
page_size = 145
date_created = 'DateCreated'
call_sid = 'CallSid'
response_type = 'json'

result = recording.create_list_recording(page, page_size, date_created, call_sid, response_type)

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
def create_view_call(callsid, 
                         response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | Call Sid id for particular Call |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
callsid = 'callsid'
response_type = 'json'

result = call.create_view_call(callsid, response_type)

```


#### <a name="create_make_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_make_call") create_make_call

> You can experiment with initiating a call through Message360 and view the request response generated when doing so and get the response in json


```ruby
def create_make_call(from_country_code, 
                         from, 
                         to_country_code, 
                         to, 
                         url, 
                         method = nil, 
                         status_call_back_url = nil, 
                         status_call_back_method = nil, 
                         fall_back_url = nil, 
                         fall_back_method = nil, 
                         heart_beat_url = nil, 
                         heart_beat_method = nil, 
                         timeout = nil, 
                         play_dtmf = nil, 
                         hide_caller_id = nil, 
                         record = nil, 
                         record_call_back_url = nil, 
                         record_call_back_method = nil, 
                         transcribe = nil, 
                         transcribe_call_back_url = nil, 
                         if_machine = nil, 
                         response_type = 'json'); end
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
from_country_code = 'FromCountryCode'
from = 'From'
to_country_code = 'ToCountryCode'
to = 'To'
url = 'Url'
method = Message360::HttpAction::GET
status_call_back_url = 'StatusCallBackUrl'
status_call_back_method = Message360::HttpAction::GET
fall_back_url = 'FallBackUrl'
fall_back_method = Message360::HttpAction::GET
heart_beat_url = 'HeartBeatUrl'
heart_beat_method = true
timeout = 145
play_dtmf = 'PlayDtmf'
hide_caller_id = true
record = true
record_call_back_url = 'RecordCallBackUrl'
record_call_back_method = Message360::HttpAction::GET
transcribe = true
transcribe_call_back_url = 'TranscribeCallBackUrl'
if_machine = Message360::IfMachine::CONTINUE
response_type = 'json'

result = call.create_make_call(from_country_code, from, to_country_code, to, url, method, status_call_back_url, status_call_back_method, fall_back_url, fall_back_method, heart_beat_url, heart_beat_method, timeout, play_dtmf, hide_caller_id, record, record_call_back_url, record_call_back_method, transcribe, transcribe_call_back_url, if_machine, response_type)

```


#### <a name="create_play_audio"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_play_audio") create_play_audio

> Play Dtmf and send the Digit


```ruby
def create_play_audio(length, 
                          direction, 
                          loop, 
                          mix, 
                          call_sid = nil, 
                          audio_url = nil, 
                          response_type = 'json'); end
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
length = 145
direction = Message360::Direction::IN
loop = true
mix = true
call_sid = 'CallSid'
audio_url = 'AudioUrl'
response_type = 'json'

result = call.create_play_audio(length, direction, loop, mix, call_sid, audio_url, response_type)

```


#### <a name="create_record_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_record_call") create_record_call

> Record a Call


```ruby
def create_record_call(call_sid, 
                           record, 
                           direction = nil, 
                           time_limit = nil, 
                           call_back_url = nil, 
                           fileformat = nil, 
                           response_type = 'json'); end
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
call_sid = 'CallSid'
record = true
direction = Message360::Direction::IN
time_limit = 145
call_back_url = 'CallBackUrl'
fileformat = Message360::AudioFormat::MP3
response_type = 'json'

result = call.create_record_call(call_sid, record, direction, time_limit, call_back_url, fileformat, response_type)

```


#### <a name="create_voice_effect"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_voice_effect") create_voice_effect

> Voice Effect


```ruby
def create_voice_effect(call_sid, 
                            audio_direction = nil, 
                            pitch_semi_tones = nil, 
                            pitch_octaves = nil, 
                            pitch = nil, 
                            rate = nil, 
                            tempo = nil, 
                            response_type = 'json'); end
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
call_sid = 'CallSid'
audio_direction = Message360::AudioDirection::IN
pitch_semi_tones = 145.369408670985
pitch_octaves = 145.369408670985
pitch = 145.369408670985
rate = 145.369408670985
tempo = 145.369408670985
response_type = 'json'

result = call.create_voice_effect(call_sid, audio_direction, pitch_semi_tones, pitch_octaves, pitch, rate, tempo, response_type)

```


#### <a name="create_send_digit"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_send_digit") create_send_digit

> Play Dtmf and send the Digit


```ruby
def create_send_digit(call_sid, 
                          play_dtmf, 
                          play_dtmf_direction = nil, 
                          response_type = 'json'); end
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
call_sid = 'CallSid'
play_dtmf = 'PlayDtmf'
play_dtmf_direction = Message360::Direction::IN
response_type = 'json'

result = call.create_send_digit(call_sid, play_dtmf, play_dtmf_direction, response_type)

```


#### <a name="create_interrupted_call"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_interrupted_call") create_interrupted_call

> Interrupt the Call by Call Sid


```ruby
def create_interrupted_call(call_sid, 
                                url = nil, 
                                method = nil, 
                                status = nil, 
                                response_type = 'json'); end
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
call_sid = 'CallSid'
url = 'Url'
method = Message360::HttpAction::GET
status = Message360::InterruptedCallStatus::CANCELED
response_type = 'json'

result = call.create_interrupted_call(call_sid, url, method, status, response_type)

```


#### <a name="create_list_calls"></a>![Method: ](http://apidocs.io/img/method.png ".CallController.create_list_calls") create_list_calls

> A list of calls associated with your Message360 account


```ruby
def create_list_calls(page = nil, 
                          page_size = nil, 
                          to = nil, 
                          from = nil, 
                          date_created = nil, 
                          response_type = 'json'); end
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
page = 'Page'
page_size = 'PageSize'
to = 'To'
from = 'From'
date_created = 'DateCreated'
response_type = 'json'

call.create_list_calls(page, page_size, to, from, date_created, response_type)

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
def create_carrier_lookup(phonenumber, 
                              response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | The number to lookup |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
phonenumber = 'phonenumber'
response_type = 'json'

result = carrier.create_carrier_lookup(phonenumber, response_type)

```


#### <a name="create_carrier_lookup_list"></a>![Method: ](http://apidocs.io/img/method.png ".CarrierController.create_carrier_lookup_list") create_carrier_lookup_list

> Get the All Purchase Number's Carrier lookup


```ruby
def create_carrier_lookup_list(page = nil, 
                                   pagesize = nil, 
                                   response_type = 'json'); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page Number |
| pagesize |  ``` Optional ```  | Page Size |
| response_type |  ``` Optional ```  ``` DefaultValue ```  | Response format, xml or json |


#### Example Usage

```ruby
page = 'page'
pagesize = 'pagesize'
response_type = 'json'

result = carrier.create_carrier_lookup_list(page, pagesize, response_type)

```


[Back to List of Controllers](#list_of_controllers)



