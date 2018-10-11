# Getting started

Ytel API version 3

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build ytel_apiv3.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install ytel_apiv3-3.1.2.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=Ytel%20API%20V3-Ruby&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

## How to Use

The following section explains how to use the YtelApiv3 Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the YtelApiv3 gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'ytel_apiv3', '~> 3.1.2' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2)

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

client = YtelApiv3::YtelApiv3Client.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Ytel%20API%20V3-Ruby&workspaceName=YtelApiv3&projectName=ytel_apiv3&gemName=ytel_apiv3&gemVer=3.1.2&initLine=client%2520%253D%2520YtelApiv3Client.new%2528%2527basic_auth_user_name%2527%252C%2520%2527basic_auth_password%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ShortCodeController](#short_code_controller)
* [AreaMailController](#area_mail_controller)
* [PostCardController](#post_card_controller)
* [LetterController](#letter_controller)
* [CallController](#call_controller)
* [PhoneNumberController](#phone_number_controller)
* [SMSController](#sms_controller)
* [SharedShortCodeController](#shared_short_code_controller)
* [ConferenceController](#conference_controller)
* [CarrierController](#carrier_controller)
* [EmailController](#email_controller)
* [AccountController](#account_controller)
* [SubAccountController](#sub_account_controller)
* [AddressController](#address_controller)
* [RecordingController](#recording_controller)
* [TranscriptionController](#transcription_controller)
* [UsageController](#usage_controller)

## <a name="short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ShortCodeController") ShortCodeController

### Get singleton instance

The singleton instance of the ``` ShortCodeController ``` class can be accessed from the API Client.

```ruby
shortCode_controller = client.short_code
```

### <a name="create_list_shortcodes"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_list_shortcodes") create_list_shortcodes

> Retrieve a list of Short Code assignment associated with your Ytel account.


```ruby
def create_list_shortcodes(shortcode = nil,
                               page = nil,
                               pagesize = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list Short Code Assignment sent from this Short Code |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |


#### Example Usage

```ruby
shortcode = 'Shortcode'
page = 'page'
pagesize = 'pagesize'

result = shortCode_controller.create_list_shortcodes(shortcode, page, pagesize)

```


### <a name="create_view_sms"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_view_sms") create_view_sms

> Retrieve a single Short Code object by its shortcode assignment.


```ruby
def create_view_sms(shortcode); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Dedicated Short Code to your Ytel account |


#### Example Usage

```ruby
shortcode = 'Shortcode'

result = shortCode_controller.create_view_sms(shortcode)

```


### <a name="create_view_sms1"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_view_sms1") create_view_sms1

> View a single Sms Short Code message.


```ruby
def create_view_sms1(message_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for the sms resource |


#### Example Usage

```ruby
message_sid = 'MessageSid'

result = shortCode_controller.create_view_sms1(message_sid)

```


### <a name="create_list_sms"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_list_sms") create_list_sms

> Retrieve a list of Short Code messages.


```ruby
def create_list_sms(shortcode = nil,
                        to = nil,
                        date_sent = nil,
                        page = nil,
                        page_size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list messages sent from this Short Code |
| to |  ``` Optional ```  | Only list messages sent to this number |
| date_sent |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | The count of objects to return per page. |


#### Example Usage

```ruby
shortcode = 'Shortcode'
to = 'To'
date_sent = 'DateSent'
page = 252
page_size = 252

result = shortCode_controller.create_list_sms(shortcode, to, date_sent, page, page_size)

```


### <a name="create_send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_send_sms") create_send_sms

> Send Dedicated Shortcode


```ruby
def create_send_sms(shortcode,
                        to,
                        body,
                        method = nil,
                        messagestatuscallback = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | Your dedicated shortcode |
| to |  ``` Required ```  | The number to send your SMS to |
| body |  ``` Required ```  | The body of your message |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST |
| messagestatuscallback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |


#### Example Usage

```ruby
shortcode = 252
to = 252.807308182962
body = 'body'
method = 'method'
messagestatuscallback = 'messagestatuscallback'

result = shortCode_controller.create_send_sms(shortcode, to, body, method, messagestatuscallback)

```


### <a name="create_list_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.create_list_inbound_sms") create_list_inbound_sms

> Retrive a list of inbound Sms Short Code messages associated with your Ytel account.


```ruby
def create_list_inbound_sms(page = nil,
                                pagesize = nil,
                                from = nil,
                                shortcode = nil,
                                datecreated = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Only list SMS messages sent from this number |
| shortcode |  ``` Optional ```  | Only list SMS messages sent to Shortcode |
| datecreated |  ``` Optional ```  | Only list SMS messages sent in the specified date MAKE REQUEST |


#### Example Usage

```ruby
page = 39
pagesize = 39
from = 'From'
shortcode = 'Shortcode'
datecreated = 'Datecreated'

result = shortCode_controller.create_list_inbound_sms(page, pagesize, from, shortcode, datecreated)

```


### <a name="update_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".ShortCodeController.update_shortcode") update_shortcode

> Update a dedicated shortcode.


```ruby
def update_shortcode(shortcode,
                         friendly_name = nil,
                         callback_method = nil,
                         callback_url = nil,
                         fallback_method = nil,
                         fallback_url = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid dedicated shortcode to your Ytel account. |
| friendly_name |  ``` Optional ```  | User generated name of the dedicated shortcode. |
| callback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| callback_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| fallback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |
| fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |


#### Example Usage

```ruby
shortcode = 'Shortcode'
friendly_name = 'FriendlyName'
callback_method = 'CallbackMethod'
callback_url = 'CallbackUrl'
fallback_method = 'FallbackMethod'
fallback_url = 'FallbackUrl'

result = shortCode_controller.update_shortcode(shortcode, friendly_name, callback_method, callback_url, fallback_method, fallback_url)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="area_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AreaMailController") AreaMailController

### Get singleton instance

The singleton instance of the ``` AreaMailController ``` class can be accessed from the API Client.

```ruby
areaMail_controller = client.area_mail
```

### <a name="create_delete_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.create_delete_area_mail") create_delete_area_mail

> Remove an AreaMail object by its AreaMailId.


```ruby
def create_delete_area_mail(areamailid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |


#### Example Usage

```ruby
areamailid = 'areamailid'

result = areaMail_controller.create_delete_area_mail(areamailid)

```


### <a name="create_view_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.create_view_area_mail") create_view_area_mail

> Retrieve an AreaMail object by its AreaMailId.


```ruby
def create_view_area_mail(areamailid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| areamailid |  ``` Required ```  | The unique identifier for an AreaMail object. |


#### Example Usage

```ruby
areamailid = 'areamailid'

result = areaMail_controller.create_view_area_mail(areamailid)

```


### <a name="create_list_area_mails"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.create_list_area_mails") create_list_area_mails

> Retrieve a list of AreaMail objects.


```ruby
def create_list_area_mails(page = nil,
                               pagesize = nil,
                               areamailsid = nil,
                               date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| areamailsid |  ``` Optional ```  | The unique identifier for an AreaMail object. |
| date_created |  ``` Optional ```  | The date the AreaMail was created. |


#### Example Usage

```ruby
page = 39
pagesize = 39
areamailsid = 'areamailsid'
date_created = 'dateCreated'

result = areaMail_controller.create_list_area_mails(page, pagesize, areamailsid, date_created)

```


### <a name="create_area_mail"></a>![Method: ](https://apidocs.io/img/method.png ".AreaMailController.create_area_mail") create_area_mail

> Create a new AreaMail object.


```ruby
def create_area_mail(routes,
                         attachbyid,
                         front,
                         back,
                         description = nil,
                         targettype = nil,
                         htmldata = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| routes |  ``` Required ```  | List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043 |
| attachbyid |  ``` Required ```  | Set an existing areamail by attaching its AreamailId. |
| front |  ``` Required ```  | The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required |
| back |  ``` Required ```  | The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. |
| description |  ``` Optional ```  | A string value to use as a description for this AreaMail item. |
| targettype |  ``` Optional ```  | The delivery location type. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
routes = 'routes'
attachbyid = 'attachbyid'
front = 'front'
back = 'back'
description = 'description'
targettype = 'targettype'
htmldata = 'htmldata'

result = areaMail_controller.create_area_mail(routes, attachbyid, front, back, description, targettype, htmldata)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_card_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostCardController") PostCardController

### Get singleton instance

The singleton instance of the ``` PostCardController ``` class can be accessed from the API Client.

```ruby
postCard_controller = client.post_card
```

### <a name="create_delete_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.create_delete_postcard") create_delete_postcard

> Remove a postcard object.


```ruby
def create_delete_postcard(postcardid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier of a postcard object. |


#### Example Usage

```ruby
postcardid = 'postcardid'

result = postCard_controller.create_delete_postcard(postcardid)

```


### <a name="create_view_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.create_view_postcard") create_view_postcard

> Retrieve a postcard object by its PostcardId.


```ruby
def create_view_postcard(postcardid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| postcardid |  ``` Required ```  | The unique identifier for a postcard object. |


#### Example Usage

```ruby
postcardid = 'postcardid'

result = postCard_controller.create_view_postcard(postcardid)

```


### <a name="create_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.create_postcard") create_postcard

> Create, print, and mail a postcard to an address. The postcard front must be supplied as a PDF, image, or an HTML string. The back can be a PDF, image, HTML string, or it can be automatically generated by supplying a custom message.


```ruby
def create_postcard(to,
                        from,
                        attachbyid,
                        front,
                        back,
                        message,
                        setting,
                        description = nil,
                        htmldata = nil); end
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
| description |  ``` Optional ```  | A description for the postcard. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
to = 'to'
from = 'from'
attachbyid = 'attachbyid'
front = 'front'
back = 'back'
message = 'message'
setting = 'setting'
description = 'description'
htmldata = 'htmldata'

result = postCard_controller.create_postcard(to, from, attachbyid, front, back, message, setting, description, htmldata)

```


### <a name="create_list_postcards"></a>![Method: ](https://apidocs.io/img/method.png ".PostCardController.create_list_postcards") create_list_postcards

> Retrieve a list of postcard objects. The postcards objects are sorted by creation date, with the most recently created postcards appearing first.


```ruby
def create_list_postcards(page = nil,
                              pagesize = nil,
                              postcardid = nil,
                              date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| postcardid |  ``` Optional ```  | The unique identifier for a postcard object. |
| date_created |  ``` Optional ```  | The date the postcard was created. |


#### Example Usage

```ruby
page = 39
pagesize = 39
postcardid = 'postcardid'
date_created = 'dateCreated'

result = postCard_controller.create_list_postcards(page, pagesize, postcardid, date_created)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".LetterController") LetterController

### Get singleton instance

The singleton instance of the ``` LetterController ``` class can be accessed from the API Client.

```ruby
letter_controller = client.letter
```

### <a name="create_delete_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.create_delete_letter") create_delete_letter

> Remove a letter object by its LetterId.


```ruby
def create_delete_letter(lettersid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |


#### Example Usage

```ruby
lettersid = 'lettersid'

result = letter_controller.create_delete_letter(lettersid)

```


### <a name="create_view_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.create_view_letter") create_view_letter

> Retrieve a letter object by its LetterSid.


```ruby
def create_view_letter(lettersid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| lettersid |  ``` Required ```  | The unique identifier for a letter object. |


#### Example Usage

```ruby
lettersid = 'lettersid'

result = letter_controller.create_view_letter(lettersid)

```


### <a name="create_letter"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.create_letter") create_letter

> Create, print, and mail a letter to an address. The letter file must be supplied as a PDF or an HTML string.


```ruby
def create_letter(to,
                      from,
                      attachbyid,
                      file,
                      color,
                      description = nil,
                      extraservice = nil,
                      doublesided = nil,
                      template = nil,
                      htmldata = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| from |  ``` Required ```  | The AddressId or an object structured when creating an address by addresses/Create. |
| attachbyid |  ``` Required ```  | Set an existing letter by attaching its LetterId. |
| file |  ``` Required ```  | File can be a 8.5"x11" PDF uploaded file or URL that links to a file. |
| color |  ``` Required ```  | Specify if letter should be printed in color. |
| description |  ``` Optional ```  | A description for the letter. |
| extraservice |  ``` Optional ```  | Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50. |
| doublesided |  ``` Optional ```  | Specify if letter should be printed on both sides. |
| template |  ``` Optional ```  | Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page. |
| htmldata |  ``` Optional ```  | A string value that contains HTML markup. |


#### Example Usage

```ruby
to = 'to'
from = 'from'
attachbyid = 'attachbyid'
file = 'file'
color = 'color'
description = 'description'
extraservice = 'extraservice'
doublesided = 'doublesided'
template = 'template'
htmldata = 'htmldata'

result = letter_controller.create_letter(to, from, attachbyid, file, color, description, extraservice, doublesided, template, htmldata)

```


### <a name="create_list_letters"></a>![Method: ](https://apidocs.io/img/method.png ".LetterController.create_list_letters") create_list_letters

> Retrieve a list of letter objects. The letter objects are sorted by creation date, with the most recently created letters appearing first.


```ruby
def create_list_letters(page = nil,
                            pagesize = nil,
                            lettersid = nil,
                            date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| lettersid |  ``` Optional ```  | The unique identifier for a letter object. |
| date_created |  ``` Optional ```  | The date the letter was created. |


#### Example Usage

```ruby
page = 39
pagesize = 39
lettersid = 'lettersid'
date_created = 'dateCreated'

result = letter_controller.create_list_letters(page, pagesize, lettersid, date_created)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="call_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CallController") CallController

### Get singleton instance

The singleton instance of the ``` CallController ``` class can be accessed from the API Client.

```ruby
call_controller = client.call
```

### <a name="create_view_call1"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_view_call1") create_view_call1

> Retrieve a single voice call’s information by its CallSid.


```ruby
def create_view_call1(call_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for the voice call. |


#### Example Usage

```ruby
call_sid = 'callSid'

result = call_controller.create_view_call1(call_sid)

```


### <a name="create_view_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_view_call") create_view_call

> Retrieve a single voice call’s information by its CallSid.


```ruby
def create_view_call(callsid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| callsid |  ``` Required ```  | The unique identifier for the voice call. |


#### Example Usage

```ruby
callsid = 'callsid'

result = call_controller.create_view_call(callsid)

```


### <a name="create_play_dtmf"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_play_dtmf") create_play_dtmf

> Play Dtmf and send the Digit


```ruby
def create_play_dtmf(call_sid,
                         play_dtmf,
                         play_dtmf_direction = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| play_dtmf |  ``` Required ```  | DTMF digits to play to the call. 0-9, #, *, W, or w |
| play_dtmf_direction |  ``` Optional ```  | The leg of the call DTMF digits should be sent to |


#### Example Usage

```ruby
call_sid = 'CallSid'
play_dtmf = 'PlayDtmf'
play_dtmf_direction = YtelApiv3::PlayDtmfDirectionEnum::IN

result = call_controller.create_play_dtmf(call_sid, play_dtmf, play_dtmf_direction)

```


### <a name="create_make_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_make_call") create_make_call

> You can experiment with initiating a call through Ytel and view the request response generated when doing so and get the response in json


```ruby
def create_make_call(from,
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
                         if_machine_url = nil,
                         if_machine_method = nil,
                         feedback = nil,
                         survey_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| to |  ``` Required ```  | To number |
| url |  ``` Required ```  | URL requested once the call connects |
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
from = 'From'
to = 'To'
url = 'Url'
method = 'Method'
status_call_back_url = 'StatusCallBackUrl'
status_call_back_method = 'StatusCallBackMethod'
fall_back_url = 'FallBackUrl'
fall_back_method = 'FallBackMethod'
heart_beat_url = 'HeartBeatUrl'
heart_beat_method = 'HeartBeatMethod'
timeout = 39
play_dtmf = 'PlayDtmf'
hide_caller_id = false
record = false
record_call_back_url = 'RecordCallBackUrl'
record_call_back_method = 'RecordCallBackMethod'
transcribe = false
transcribe_call_back_url = 'TranscribeCallBackUrl'
if_machine = YtelApiv3::IfMachineEnum::CONTINUE
if_machine_url = 'IfMachineUrl'
if_machine_method = 'IfMachineMethod'
feedback = false
survey_id = 'SurveyId'

result = call_controller.create_make_call(from, to, url, method, status_call_back_url, status_call_back_method, fall_back_url, fall_back_method, heart_beat_url, heart_beat_method, timeout, play_dtmf, hide_caller_id, record, record_call_back_url, record_call_back_method, transcribe, transcribe_call_back_url, if_machine, if_machine_url, if_machine_method, feedback, survey_id)

```


### <a name="create_play_audio"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_play_audio") create_play_audio

> Play Audio from a url


```ruby
def create_play_audio(call_sid,
                          audio_url,
                          say_text,
                          length = nil,
                          direction = nil,
                          mix = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier of each call resource |
| audio_url |  ``` Required ```  | URL to sound that should be played. You also can add more than one audio file using semicolons e.g. http://example.com/audio1.mp3;http://example.com/audio2.wav |
| say_text |  ``` Required ```  | Valid alphanumeric string that should be played to the In-progress call. |
| length |  ``` Optional ```  | Time limit in seconds for audio play back |
| direction |  ``` Optional ```  | The leg of the call audio will be played to |
| mix |  ``` Optional ```  | If false, all other audio will be muted |


#### Example Usage

```ruby
call_sid = 'CallSid'
audio_url = 'AudioUrl'
say_text = 'SayText'
length = 39
direction = YtelApiv3::DirectionEnum::IN
mix = false

result = call_controller.create_play_audio(call_sid, audio_url, say_text, length, direction, mix)

```


### <a name="create_record_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_record_call") create_record_call

> Start or stop recording of an in-progress voice call.


```ruby
def create_record_call(call_sid,
                           record,
                           direction = nil,
                           time_limit = nil,
                           call_back_url = nil,
                           fileformat = nil); end
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


#### Example Usage

```ruby
call_sid = 'CallSid'
record = false
direction = YtelApiv3::Direction4Enum::IN
time_limit = 39
call_back_url = 'CallBackUrl'
fileformat = YtelApiv3::FileformatEnum::MP3

result = call_controller.create_record_call(call_sid, record, direction, time_limit, call_back_url, fileformat)

```


### <a name="create_voice_effect"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_voice_effect") create_voice_effect

> Add audio voice effects to the an in-progress voice call.


```ruby
def create_voice_effect(call_sid,
                            audio_direction = nil,
                            pitch_semi_tones = nil,
                            pitch_octaves = nil,
                            pitch = nil,
                            rate = nil,
                            tempo = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for the in-progress voice call. |
| audio_direction |  ``` Optional ```  | The direction the audio effect should be placed on. If IN, the effects will occur on the incoming audio stream. If OUT, the effects will occur on the outgoing audio stream. |
| pitch_semi_tones |  ``` Optional ```  | Set the pitch in semitone (half-step) intervals. Value between -14 and 14 |
| pitch_octaves |  ``` Optional ```  | Set the pitch in octave intervals.. Value between -1 and 1 |
| pitch |  ``` Optional ```  | Set the pitch (lowness/highness) of the audio. The higher the value, the higher the pitch. Value greater than 0 |
| rate |  ``` Optional ```  | Set the rate for audio. The lower the value, the lower the rate. value greater than 0 |
| tempo |  ``` Optional ```  | Set the tempo (speed) of the audio. A higher value denotes a faster tempo. Value greater than 0 |


#### Example Usage

```ruby
call_sid = 'CallSid'
audio_direction = YtelApiv3::AudioDirectionEnum::IN
pitch_semi_tones = 39.5304814095285
pitch_octaves = 39.5304814095285
pitch = 39.5304814095285
rate = 39.5304814095285
tempo = 39.5304814095285

result = call_controller.create_voice_effect(call_sid, audio_direction, pitch_semi_tones, pitch_octaves, pitch, rate, tempo)

```


### <a name="create_interrupt_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_interrupt_call") create_interrupt_call

> Interrupt the Call by Call Sid


```ruby
def create_interrupt_call(call_sid,
                              url = nil,
                              method = nil,
                              status = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| call_sid |  ``` Required ```  | The unique identifier for voice call that is in progress. |
| url |  ``` Optional ```  | URL the in-progress call will be redirected to |
| method |  ``` Optional ```  | The method used to request the above Url parameter |
| status |  ``` Optional ```  | Status to set the in-progress call to |


#### Example Usage

```ruby
call_sid = 'CallSid'
url = 'Url'
method = 'Method'
status = YtelApiv3::StatusEnum::CANCELED

result = call_controller.create_interrupt_call(call_sid, url, method, status)

```


### <a name="create_list_calls"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_list_calls") create_list_calls

> A list of calls associated with your Ytel account


```ruby
def create_list_calls(page = nil,
                          page_size = nil,
                          to = nil,
                          from = nil,
                          date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| to |  ``` Optional ```  | Filter calls that were sent to this 10-digit number (E.164 format). |
| from |  ``` Optional ```  | Filter calls that were sent from this 10-digit number (E.164 format). |
| date_created |  ``` Optional ```  | Return calls that are from a specified date. |


#### Example Usage

```ruby
page = 39
page_size = 39
to = 'To'
from = 'From'
date_created = 'DateCreated'

result = call_controller.create_list_calls(page, page_size, to, from, date_created)

```


### <a name="create_send_rvm"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_send_rvm") create_send_rvm

> Initiate an outbound Ringless Voicemail through Ytel.


```ruby
def create_send_rvm(from,
                        rvm_caller_id,
                        to,
                        voice_mail_url,
                        method = nil,
                        status_call_back_url = nil,
                        stats_call_back_method = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call. |
| rvm_caller_id |  ``` Required ```  | A required secondary Caller ID for RVM to work. |
| to |  ``` Required ```  | A valid number (E.164 format) that will receive the phone call. |
| voice_mail_url |  ``` Required ```  | The URL requested once the RVM connects. A set of default parameters will be sent here. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
| status_call_back_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| stats_call_back_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |


#### Example Usage

```ruby
from = 'From'
rvm_caller_id = 'RVMCallerId'
to = 'To'
voice_mail_url = 'VoiceMailURL'
method = 'Method'
status_call_back_url = 'StatusCallBackUrl'
stats_call_back_method = 'StatsCallBackMethod'

result = call_controller.create_send_rvm(from, rvm_caller_id, to, voice_mail_url, method, status_call_back_url, stats_call_back_method)

```


### <a name="create_group_call"></a>![Method: ](https://apidocs.io/img/method.png ".CallController.create_group_call") create_group_call

> Group Call


```ruby
def create_group_call(from,
                          to,
                          url,
                          group_confirm_key,
                          group_confirm_file,
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
                          transcribe_call_back_url = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | This number to display on Caller ID as calling |
| to |  ``` Required ```  | Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222 |
| url |  ``` Required ```  | URL requested once the call connects |
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
from = 'From'
to = 'To'
url = 'Url'
group_confirm_key = 'GroupConfirmKey'
group_confirm_file = YtelApiv3::GroupConfirmFileEnum::MP3
method = 'Method'
status_call_back_url = 'StatusCallBackUrl'
status_call_back_method = 'StatusCallBackMethod'
fall_back_url = 'FallBackUrl'
fall_back_method = 'FallBackMethod'
heart_beat_url = 'HeartBeatUrl'
heart_beat_method = 'HeartBeatMethod'
timeout = 203
play_dtmf = 'PlayDtmf'
hide_caller_id = 'HideCallerId'
record = true
record_call_back_url = 'RecordCallBackUrl'
record_call_back_method = 'RecordCallBackMethod'
transcribe = true
transcribe_call_back_url = 'TranscribeCallBackUrl'

result = call_controller.create_group_call(from, to, url, group_confirm_key, group_confirm_file, method, status_call_back_url, status_call_back_method, fall_back_url, fall_back_method, heart_beat_url, heart_beat_method, timeout, play_dtmf, hide_caller_id, record, record_call_back_url, record_call_back_method, transcribe, transcribe_call_back_url)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="phone_number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PhoneNumberController") PhoneNumberController

### Get singleton instance

The singleton instance of the ``` PhoneNumberController ``` class can be accessed from the API Client.

```ruby
phoneNumber_controller = client.phone_number
```

### <a name="create_get_did_score"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_get_did_score") create_get_did_score

> Get DID Score Number


```ruby
def create_get_did_score(phonenumber); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | Specifies the multiple phone numbers for check updated spamscore . |


#### Example Usage

```ruby
phonenumber = 'Phonenumber'

result = phoneNumber_controller.create_get_did_score(phonenumber)

```


### <a name="create_move_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_move_number") create_move_number

> Transfer phone number that has been purchased for from one account to another account.


```ruby
def create_move_number(phonenumber,
                           fromaccountsid,
                           toaccountsid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phonenumber |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |
| fromaccountsid |  ``` Required ```  | A specific Accountsid from where Number is getting transfer. |
| toaccountsid |  ``` Required ```  | A specific Accountsid to which Number is getting transfer. |


#### Example Usage

```ruby
phonenumber = 'phonenumber'
fromaccountsid = 'fromaccountsid'
toaccountsid = 'toaccountsid'

result = phoneNumber_controller.create_move_number(phonenumber, fromaccountsid, toaccountsid)

```


### <a name="create_purchase_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_purchase_number") create_purchase_number

> Purchase a phone number to be used with your Ytel account


```ruby
def create_purchase_number(phone_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'

result = phoneNumber_controller.create_purchase_number(phone_number)

```


### <a name="create_release_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_release_number") create_release_number

> Remove a purchased Ytel number from your account.


```ruby
def create_release_number(response_type,
                              phone_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| response_type |  ``` Required ```  | Response type format xml or json |
| phone_number |  ``` Required ```  | A valid 10-digit Ytel number (E.164 format). |


#### Example Usage

```ruby
response_type = 'ResponseType'
phone_number = 'PhoneNumber'

result = phoneNumber_controller.create_release_number(response_type, phone_number)

```


### <a name="create_view_details"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_view_details") create_view_details

> Retrieve the details for a phone number by its number.


```ruby
def create_view_details(phone_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel 10-digit phone number (E.164 format). |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'

result = phoneNumber_controller.create_view_details(phone_number)

```


### <a name="create_bulk_release"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_bulk_release") create_bulk_release

> Remove a purchased Ytel number from your account.


```ruby
def create_bulk_release(phone_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel comma separated numbers (E.164 format). |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'

result = phoneNumber_controller.create_bulk_release(phone_number)

```


### <a name="create_available_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_available_numbers") create_available_numbers

> Retrieve a list of available phone numbers that can be purchased and used for your Ytel account.


```ruby
def create_available_numbers(numbertype,
                                 areacode,
                                 pagesize = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| numbertype |  ``` Required ```  | Number type either SMS,Voice or all |
| areacode |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| pagesize |  ``` Optional ```  | The count of objects to return. |


#### Example Usage

```ruby
numbertype = YtelApiv3::NumbertypeEnum::ALL
areacode = 'areacode'
pagesize = 203

result = phoneNumber_controller.create_available_numbers(numbertype, areacode, pagesize)

```


### <a name="update_number"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.update_number") update_number

> Update properties for a Ytel number that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```ruby
def update_number(phone_number,
                      voice_url,
                      friendly_name = nil,
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
                      sms_fallback_method = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid Ytel number (E.164 format). |
| voice_url |  ``` Required ```  | URL requested once the call connects |
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
phone_number = 'PhoneNumber'
voice_url = 'VoiceUrl'
friendly_name = 'FriendlyName'
voice_method = 'VoiceMethod'
voice_fallback_url = 'VoiceFallbackUrl'
voice_fallback_method = 'VoiceFallbackMethod'
hangup_callback = 'HangupCallback'
hangup_callback_method = 'HangupCallbackMethod'
heartbeat_url = 'HeartbeatUrl'
heartbeat_method = 'HeartbeatMethod'
sms_url = 'SmsUrl'
sms_method = 'SmsMethod'
sms_fallback_url = 'SmsFallbackUrl'
sms_fallback_method = 'SmsFallbackMethod'

result = phoneNumber_controller.update_number(phone_number, voice_url, friendly_name, voice_method, voice_fallback_url, voice_fallback_method, hangup_callback, hangup_callback_method, heartbeat_url, heartbeat_method, sms_url, sms_method, sms_fallback_url, sms_fallback_method)

```


### <a name="create_list_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_list_numbers") create_list_numbers

> Retrieve a list of purchased phones numbers associated with your Ytel account.


```ruby
def create_list_numbers(page = nil,
                            page_size = nil,
                            number_type = nil,
                            friendly_name = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Which page of the overall response will be returned. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| number_type |  ``` Optional ```  | The capability supported by the number.Number type either SMS,Voice or all |
| friendly_name |  ``` Optional ```  | A human-readable label added to the number object. |


#### Example Usage

```ruby
page = 203
page_size = 203
number_type = YtelApiv3::NumberType14Enum::ALL
friendly_name = 'FriendlyName'

result = phoneNumber_controller.create_list_numbers(page, page_size, number_type, friendly_name)

```


### <a name="create_bulk_update_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_bulk_update_numbers") create_bulk_update_numbers

> Update properties for a Ytel numbers that has been purchased for your account. Refer to the parameters list for the list of properties that can be updated.


```ruby
def create_bulk_update_numbers(phone_number,
                                   voice_url,
                                   friendly_name = nil,
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
                                   sms_fallback_method = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid comma(,) separated Ytel numbers. (E.164 format). |
| voice_url |  ``` Required ```  | The URL returning InboundXML incoming calls should execute when connected. |
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
phone_number = 'PhoneNumber'
voice_url = 'VoiceUrl'
friendly_name = 'FriendlyName'
voice_method = 'VoiceMethod'
voice_fallback_url = 'VoiceFallbackUrl'
voice_fallback_method = 'VoiceFallbackMethod'
hangup_callback = 'HangupCallback'
hangup_callback_method = 'HangupCallbackMethod'
heartbeat_url = 'HeartbeatUrl'
heartbeat_method = 'HeartbeatMethod'
sms_url = 'SmsUrl'
sms_method = 'SmsMethod'
sms_fallback_url = 'SmsFallbackUrl'
sms_fallback_method = 'SmsFallbackMethod'

result = phoneNumber_controller.create_bulk_update_numbers(phone_number, voice_url, friendly_name, voice_method, voice_fallback_url, voice_fallback_method, hangup_callback, hangup_callback_method, heartbeat_url, heartbeat_method, sms_url, sms_method, sms_fallback_url, sms_fallback_method)

```


### <a name="create_bulk_buy_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".PhoneNumberController.create_bulk_buy_numbers") create_bulk_buy_numbers

> Purchase a selected number of DID's from specific area codes to be used with your Ytel account.


```ruby
def create_bulk_buy_numbers(number_type,
                                area_code,
                                quantity,
                                leftover = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| number_type |  ``` Required ```  | The capability the number supports. |
| area_code |  ``` Required ```  | Specifies the area code for the returned list of available numbers. Only available for North American numbers. |
| quantity |  ``` Required ```  | A positive integer that tells how many number you want to buy at a time. |
| leftover |  ``` Optional ```  | If desired quantity is unavailable purchase what is available . |


#### Example Usage

```ruby
number_type = YtelApiv3::NumberType15Enum::ALL
area_code = 'AreaCode'
quantity = 'Quantity'
leftover = 'Leftover'

result = phoneNumber_controller.create_bulk_buy_numbers(number_type, area_code, quantity, leftover)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS_controller = client.sms
```

### <a name="create_view_sms1"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_view_sms1") create_view_sms1

> Retrieve a single SMS message object with details by its SmsSid.


```ruby
def create_view_sms1(message_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for a sms message. |


#### Example Usage

```ruby
message_sid = 'MessageSid'

result = sMS_controller.create_view_sms1(message_sid)

```


### <a name="create_view_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_view_sms") create_view_sms

> Retrieve a single SMS message object by its SmsSid.


```ruby
def create_view_sms(message_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_sid |  ``` Required ```  | The unique identifier for a sms message. |


#### Example Usage

```ruby
message_sid = 'MessageSid'

result = sMS_controller.create_view_sms(message_sid)

```


### <a name="create_send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_send_sms") create_send_sms

> Send an SMS from a Ytel number


```ruby
def create_send_sms(from,
                        to,
                        body,
                        method = nil,
                        message_status_callback = nil,
                        smartsms = nil,
                        delivery_status = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| from |  ``` Required ```  | The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent. |
| to |  ``` Required ```  | The 10-digit phone number (E.164 format) that will receive the message. |
| body |  ``` Required ```  | The body message that is to be sent in the text. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once SMS sent. |
| message_status_callback |  ``` Optional ```  | URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished. |
| smartsms |  ``` Optional ```  | Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message. |
| delivery_status |  ``` Optional ```  | Delivery reports are a method to tell your system if the message has arrived on the destination phone. |


#### Example Usage

```ruby
from = 'From'
to = 'To'
body = 'Body'
method = 'Method'
message_status_callback = 'MessageStatusCallback'
smartsms = true
delivery_status = true

result = sMS_controller.create_send_sms(from, to, body, method, message_status_callback, smartsms, delivery_status)

```


### <a name="create_list_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_list_sms") create_list_sms

> Retrieve a list of Outbound SMS message objects.


```ruby
def create_list_sms(page = nil,
                        page_size = nil,
                        from = nil,
                        to = nil,
                        date_sent = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| date_sent |  ``` Optional ```  | Only list SMS messages sent in the specified date range |


#### Example Usage

```ruby
page = 244
page_size = 244
from = 'From'
to = 'To'
date_sent = 'DateSent'

result = sMS_controller.create_list_sms(page, page_size, from, to, date_sent)

```


### <a name="create_list_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_list_inbound_sms") create_list_inbound_sms

> Retrieve a list of Inbound SMS message objects.


```ruby
def create_list_inbound_sms(page = nil,
                                page_size = nil,
                                from = nil,
                                to = nil,
                                date_sent = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | The count of objects to return per page. |
| from |  ``` Optional ```  | Filter SMS message objects from this valid 10-digit phone number (E.164 format). |
| to |  ``` Optional ```  | Filter SMS message objects to this valid 10-digit phone number (E.164 format). |
| date_sent |  ``` Optional ```  | Filter sms message objects by this date. |


#### Example Usage

```ruby
page = 244
page_size = 244
from = 'From'
to = 'To'
date_sent = 'DateSent'

result = sMS_controller.create_list_inbound_sms(page, page_size, from, to, date_sent)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="shared_short_code_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SharedShortCodeController") SharedShortCodeController

### Get singleton instance

The singleton instance of the ``` SharedShortCodeController ``` class can be accessed from the API Client.

```ruby
sharedShortCode_controller = client.shared_short_code
```

### <a name="create_view_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_view_shortcode") create_view_shortcode

> The response returned here contains all resource properties associated with the given Shortcode.


```ruby
def create_view_shortcode(shortcode); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid Shortcode to your Ytel account |


#### Example Usage

```ruby
shortcode = 'Shortcode'

result = sharedShortCode_controller.create_view_shortcode(shortcode)

```


### <a name="create_view_keyword"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_view_keyword") create_view_keyword

> View a set of properties for a single keyword.


```ruby
def create_view_keyword(keywordid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| keywordid |  ``` Required ```  | The unique identifier of each keyword |


#### Example Usage

```ruby
keywordid = 'Keywordid'

result = sharedShortCode_controller.create_view_keyword(keywordid)

```


### <a name="create_view_template"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_view_template") create_view_template

> View a Shared ShortCode Template


```ruby
def create_view_template(template_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | The unique identifier for a template object |


#### Example Usage

```ruby
template_id = UUID.new

result = sharedShortCode_controller.create_view_template(template_id)

```


### <a name="create_list_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_list_inbound_sms") create_list_inbound_sms

> List All Inbound ShortCode


```ruby
def create_list_inbound_sms(datecreated = nil,
                                page = nil,
                                pagesize = nil,
                                from = nil,
                                shortcode = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| datecreated |  ``` Optional ```  | Only list messages sent with the specified date |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| from |  ``` Optional ```  | From Number to Inbound ShortCode |
| shortcode |  ``` Optional ```  | Only list messages sent to this Short Code |


#### Example Usage

```ruby
datecreated = 'Datecreated'
page = 244
pagesize = 244
from = 'from'
shortcode = 'Shortcode'

result = sharedShortCode_controller.create_list_inbound_sms(datecreated, page, pagesize, from, shortcode)

```


### <a name="create_send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_send_sms") create_send_sms

> Send an SMS from a Ytel ShortCode


```ruby
def create_send_sms(shortcode,
                        to,
                        templateid,
                        data,
                        method = nil,
                        message_status_callback = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | The Short Code number that is the sender of this message |
| to |  ``` Required ```  | A valid 10-digit number that should receive the message |
| templateid |  ``` Required ```  | The unique identifier for the template used for the message |
| data |  ``` Required ```  | format of your data, example: {companyname}:test,{otpcode}:1234 |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once the Short Code message is sent. |
| message_status_callback |  ``` Optional ```  | URL that can be requested to receive notification when Short Code message was sent. |


#### Example Usage

```ruby
shortcode = 'shortcode'
to = 'to'
templateid = UUID.new
data = 'data'
method = 'Method'
message_status_callback = 'MessageStatusCallback'

result = sharedShortCode_controller.create_send_sms(shortcode, to, templateid, data, method, message_status_callback)

```


### <a name="create_list_templates"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_list_templates") create_list_templates

> List Shortcode Templates by Type


```ruby
def create_list_templates(type = nil,
                              page = nil,
                              pagesize = nil,
                              shortcode = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| type |  ``` Optional ```  | The type (category) of template Valid values: marketing, authorization |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| shortcode |  ``` Optional ```  | Only list templates of type |


#### Example Usage

```ruby
type = 'type'
page = 244
pagesize = 244
shortcode = 'Shortcode'

result = sharedShortCode_controller.create_list_templates(type, page, pagesize, shortcode)

```


### <a name="create_list_keywords"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_list_keywords") create_list_keywords

> Retrieve a list of keywords associated with your Ytel account.


```ruby
def create_list_keywords(page = nil,
                             pagesize = nil,
                             keyword = nil,
                             shortcode = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| keyword |  ``` Optional ```  | Only list keywords of keyword |
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |


#### Example Usage

```ruby
page = 244
pagesize = 244
keyword = 'Keyword'
shortcode = 244

result = sharedShortCode_controller.create_list_keywords(page, pagesize, keyword, shortcode)

```


### <a name="create_list_shortcodes"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.create_list_shortcodes") create_list_shortcodes

> Retrieve a list of shortcode assignment associated with your Ytel account.


```ruby
def create_list_shortcodes(shortcode = nil,
                               page = nil,
                               pagesize = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Optional ```  | Only list keywords of shortcode |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |


#### Example Usage

```ruby
shortcode = 'Shortcode'
page = 244
pagesize = 244

result = sharedShortCode_controller.create_list_shortcodes(shortcode, page, pagesize)

```


### <a name="update_shortcode"></a>![Method: ](https://apidocs.io/img/method.png ".SharedShortCodeController.update_shortcode") update_shortcode

> Update Assignment


```ruby
def update_shortcode(shortcode,
                         friendly_name = nil,
                         callback_url = nil,
                         callback_method = nil,
                         fallback_url = nil,
                         fallback_url_method = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| shortcode |  ``` Required ```  | List of valid shortcode to your Ytel account |
| friendly_name |  ``` Optional ```  | User generated name of the shortcode |
| callback_url |  ``` Optional ```  | URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished. |
| callback_method |  ``` Optional ```  | Specifies the HTTP method used to request the required StatusCallBackUrl once call connects. |
| fallback_url |  ``` Optional ```  | URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST. |
| fallback_url_method |  ``` Optional ```  | Specifies the HTTP method used to request the required FallbackUrl once call connects. |


#### Example Usage

```ruby
shortcode = 'Shortcode'
friendly_name = 'FriendlyName'
callback_url = 'CallbackUrl'
callback_method = 'CallbackMethod'
fallback_url = 'FallbackUrl'
fallback_url_method = 'FallbackUrlMethod'

result = sharedShortCode_controller.update_shortcode(shortcode, friendly_name, callback_url, callback_method, fallback_url, fallback_url_method)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="conference_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConferenceController") ConferenceController

### Get singleton instance

The singleton instance of the ``` ConferenceController ``` class can be accessed from the API Client.

```ruby
conference_controller = client.conference
```

### <a name="create_play_audio"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_play_audio") create_play_audio

> Play an audio file during a conference.


```ruby
def create_play_audio(conference_sid,
                          participant_sid,
                          audio_url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |
| audio_url |  ``` Required ```  | The URL for the audio file that is to be played during the conference. Multiple audio files can be chained by using a semicolon. |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'
participant_sid = 'ParticipantSid'
audio_url = YtelApiv3::AudioUrlEnum::MP3

result = conference_controller.create_play_audio(conference_sid, participant_sid, audio_url)

```


### <a name="create_hangup_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_hangup_participant") create_hangup_participant

> Remove a participant from a conference.


```ruby
def create_hangup_participant(participant_sid,
                                  conference_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |


#### Example Usage

```ruby
participant_sid = 'ParticipantSid'
conference_sid = 'ConferenceSid'

result = conference_controller.create_hangup_participant(participant_sid, conference_sid)

```


### <a name="create_view_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_view_conference") create_view_conference

> Retrieve information about a conference by its ConferenceSid.


```ruby
def create_view_conference(conference_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier of each conference resource |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'

result = conference_controller.create_view_conference(conference_sid)

```


### <a name="create_view_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_view_participant") create_view_participant

> Retrieve information about a participant by its ParticipantSid.


```ruby
def create_view_participant(conference_sid,
                                participant_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_sid |  ``` Required ```  | The unique identifier for a participant object. |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'
participant_sid = 'ParticipantSid'

result = conference_controller.create_view_participant(conference_sid, participant_sid)

```


### <a name="create_silence_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_silence_participant") create_silence_participant

> Deaf Mute Participant


```ruby
def create_silence_participant(conference_sid,
                                   participant_sid,
                                   muted = nil,
                                   deaf = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | ID of the active conference |
| participant_sid |  ``` Required ```  | ID of an active participant |
| muted |  ``` Optional ```  | Mute a participant |
| deaf |  ``` Optional ```  | Make it so a participant cant hear |


#### Example Usage

```ruby
conference_sid = 'conferenceSid'
participant_sid = 'ParticipantSid'
muted = true
deaf = true

result = conference_controller.create_silence_participant(conference_sid, participant_sid, muted, deaf)

```


### <a name="add_participant"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.add_participant") add_participant

> Add Participant in conference 


```ruby
def add_participant(conference_sid,
                        participant_number,
                        muted = nil,
                        deaf = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference object. |
| participant_number |  ``` Required ```  | The phone number of the participant to be added. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'
participant_number = 'ParticipantNumber'
muted = true
deaf = true

result = conference_controller.add_participant(conference_sid, participant_number, muted, deaf)

```


### <a name="create_conference"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_conference") create_conference

> Here you can experiment with initiating a conference call through Ytel and view the request response generated when doing so.


```ruby
def create_conference(url,
                          from,
                          to,
                          method = nil,
                          status_call_back_url = nil,
                          status_call_back_method = nil,
                          fallback_url = nil,
                          fallback_method = nil,
                          record = nil,
                          record_call_back_url = nil,
                          record_call_back_method = nil,
                          schedule_time = nil,
                          timeout = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | URL requested once the conference connects |
| from |  ``` Required ```  | A valid 10-digit number (E.164 format) that will be initiating the conference call. |
| to |  ``` Required ```  | A valid 10-digit number (E.164 format) that is to receive the conference call. |
| method |  ``` Optional ```  | Specifies the HTTP method used to request the required URL once call connects. |
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
url = 'Url'
from = 'From'
to = 'To'
method = 'Method'
status_call_back_url = 'StatusCallBackUrl'
status_call_back_method = 'StatusCallBackMethod'
fallback_url = 'FallbackUrl'
fallback_method = 'FallbackMethod'
record = true
record_call_back_url = 'RecordCallBackUrl'
record_call_back_method = 'RecordCallBackMethod'
schedule_time = 'ScheduleTime'
timeout = 244

result = conference_controller.create_conference(url, from, to, method, status_call_back_url, status_call_back_method, fallback_url, fallback_method, record, record_call_back_url, record_call_back_method, schedule_time, timeout)

```


### <a name="create_list_participants"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_list_participants") create_list_participants

> Retrieve a list of participants for an in-progress conference.


```ruby
def create_list_participants(conference_sid,
                                 page = nil,
                                 pagesize = nil,
                                 muted = nil,
                                 deaf = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| conference_sid |  ``` Required ```  | The unique identifier for a conference. |
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| muted |  ``` Optional ```  | Specifies if participant should be muted. |
| deaf |  ``` Optional ```  | Specifies if the participant should hear audio in the conference. |


#### Example Usage

```ruby
conference_sid = 'ConferenceSid'
page = 244
pagesize = 244
muted = true
deaf = true

result = conference_controller.create_list_participants(conference_sid, page, pagesize, muted, deaf)

```


### <a name="create_list_conferences"></a>![Method: ](https://apidocs.io/img/method.png ".ConferenceController.create_list_conferences") create_list_conferences

> Retrieve a list of conference objects.


```ruby
def create_list_conferences(page = nil,
                                pagesize = nil,
                                friendly_name = nil,
                                date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | Number of individual resources listed in the response per page |
| friendly_name |  ``` Optional ```  | Only return conferences with the specified FriendlyName |
| date_created |  ``` Optional ```  | Conference created date |


#### Example Usage

```ruby
page = 244
pagesize = 244
friendly_name = 'FriendlyName'
date_created = 'DateCreated'

result = conference_controller.create_list_conferences(page, pagesize, friendly_name, date_created)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="carrier_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CarrierController") CarrierController

### Get singleton instance

The singleton instance of the ``` CarrierController ``` class can be accessed from the API Client.

```ruby
carrier_controller = client.carrier
```

### <a name="create_lookup_carrier"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.create_lookup_carrier") create_lookup_carrier

> Get the Carrier Lookup


```ruby
def create_lookup_carrier(phone_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| phone_number |  ``` Required ```  | A valid 10-digit number (E.164 format). |


#### Example Usage

```ruby
phone_number = 'PhoneNumber'

result = carrier_controller.create_lookup_carrier(phone_number)

```


### <a name="create_carrier_results"></a>![Method: ](https://apidocs.io/img/method.png ".CarrierController.create_carrier_results") create_carrier_results

> Retrieve a list of carrier lookup objects.


```ruby
def create_carrier_results(page = nil,
                               page_size = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| page_size |  ``` Optional ```  | The count of objects to return per page. |


#### Example Usage

```ruby
page = 244
page_size = 244

result = carrier_controller.create_carrier_results(page, page_size)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email_controller = client.email
```

### <a name="create_remove_invalid_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_remove_invalid_email") create_remove_invalid_email

> Remove an email from the invalid email list.


```ruby
def create_remove_invalid_email(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the invalid email list. |


#### Example Usage

```ruby
email = 'Email'

result = email_controller.create_remove_invalid_email(email)

```


### <a name="create_blocked_emails"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_blocked_emails") create_blocked_emails

> Retrieve a list of emails that have been blocked.


```ruby
def create_blocked_emails(offset = nil,
                              limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of blocked emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
offset = 'Offset'
limit = 'Limit'

result = email_controller.create_blocked_emails(offset, limit)

```


### <a name="create_spam_emails"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_spam_emails") create_spam_emails

> Retrieve a list of emails that are on the spam list.


```ruby
def create_spam_emails(offset = nil,
                           limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of spam emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
offset = 'Offset'
limit = 'Limit'

result = email_controller.create_spam_emails(offset, limit)

```


### <a name="create_bounced_emails"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_bounced_emails") create_bounced_emails

> Retrieve a list of emails that have bounced.


```ruby
def create_bounced_emails(offset = nil,
                              limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of bounced emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
offset = 'Offset'
limit = 'Limit'

result = email_controller.create_bounced_emails(offset, limit)

```


### <a name="create_remove_bounced_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_remove_bounced_email") create_remove_bounced_email

> Remove an email address from the bounced list.


```ruby
def create_remove_bounced_email(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the bounced email list. |


#### Example Usage

```ruby
email = 'Email'

result = email_controller.create_remove_bounced_email(email)

```


### <a name="create_invalid_emails"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_invalid_emails") create_invalid_emails

> Retrieve a list of invalid email addresses.


```ruby
def create_invalid_emails(offset = nil,
                              limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of invalid emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
offset = 'Offset'
limit = 'Limit'

result = email_controller.create_invalid_emails(offset, limit)

```


### <a name="create_list_unsubscribed_emails"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_list_unsubscribed_emails") create_list_unsubscribed_emails

> Retrieve a list of email addresses from the unsubscribe list.


```ruby
def create_list_unsubscribed_emails(offset = nil,
                                        limit = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| offset |  ``` Optional ```  | The starting point of the list of unsubscribed emails that should be returned. |
| limit |  ``` Optional ```  | The count of results that should be returned. |


#### Example Usage

```ruby
offset = 'Offset'
limit = 'Limit'

result = email_controller.create_list_unsubscribed_emails(offset, limit)

```


### <a name="create_remove_unsubscribed_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_remove_unsubscribed_email") create_remove_unsubscribed_email

> Remove an email address from the list of unsubscribed emails.


```ruby
def create_remove_unsubscribed_email(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the unsubscribe list. |


#### Example Usage

```ruby
email = 'email'

result = email_controller.create_remove_unsubscribed_email(email)

```


### <a name="add_email_unsubscribe"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.add_email_unsubscribe") add_email_unsubscribe

> Add an email to the unsubscribe list


```ruby
def add_email_unsubscribe(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be added to the unsubscribe list |


#### Example Usage

```ruby
email = 'email'

result = email_controller.add_email_unsubscribe(email)

```


### <a name="create_remove_blocked_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_remove_blocked_address") create_remove_blocked_address

> Remove an email from blocked emails list.


```ruby
def create_remove_blocked_address(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The email address to be remove from the blocked list. |


#### Example Usage

```ruby
email = 'Email'

result = email_controller.create_remove_blocked_address(email)

```


### <a name="create_remove_spam_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_remove_spam_address") create_remove_spam_address

> Remove an email from the spam email list.


```ruby
def create_remove_spam_address(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | A valid email address that is to be remove from the spam list. |


#### Example Usage

```ruby
email = 'Email'

result = email_controller.create_remove_spam_address(email)

```


### <a name="create_send_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_send_email") create_send_email

> Create and submit an email message to one or more email addresses.


```ruby
def create_send_email(to,
                          type,
                          subject,
                          message,
                          from = nil,
                          cc = nil,
                          bcc = nil,
                          attachment = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| to |  ``` Required ```  | A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| type |  ``` Required ```  | Specifies the type of email to be sent |
| subject |  ``` Required ```  | The subject of the mail. Must be a valid string. |
| message |  ``` Required ```  | The email message that is to be sent in the text. |
| from |  ``` Optional ```  | A valid address that will send the email. |
| cc |  ``` Optional ```  | Carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| bcc |  ``` Optional ```  | Blind carbon copy. A valid address that will receive the email. Multiple addresses can be separated by using commas. |
| attachment |  ``` Optional ```  | A file that is attached to the email. Must be less than 7 MB in size. |


#### Example Usage

```ruby
to = 'To'
type = YtelApiv3::TypeEnum::TEXT
subject = 'Subject'
message = 'Message'
from = 'From'
cc = 'Cc'
bcc = 'Bcc'
attachment = 'Attachment'

result = email_controller.create_send_email(to, type, subject, message, from, cc, bcc, attachment)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account_controller = client.account
```

### <a name="create_view_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.create_view_account") create_view_account

> Retrieve information regarding your Ytel account by a specific date. The response object will contain data such as account status, balance, and account usage totals.


```ruby
def create_view_account(date); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date |  ``` Required ```  | Filter account information based on date. |


#### Example Usage

```ruby
date = 'Date'

result = account_controller.create_view_account(date)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sub_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubAccountController") SubAccountController

### Get singleton instance

The singleton instance of the ``` SubAccountController ``` class can be accessed from the API Client.

```ruby
subAccount_controller = client.sub_account
```

### <a name="create_toggle_subaccount_status"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.create_toggle_subaccount_status") create_toggle_subaccount_status

> Suspend or unsuspend


```ruby
def create_toggle_subaccount_status(sub_account_sid,
                                        m_activate); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sub_account_sid |  ``` Required ```  | The SubaccountSid to be activated or suspended |
| m_activate |  ``` Required ```  | 0 to suspend or 1 to activate |


#### Example Usage

```ruby
sub_account_sid = 'SubAccountSID'
m_activate = YtelApiv3::MActivateEnum::ENUM_1

result = subAccount_controller.create_toggle_subaccount_status(sub_account_sid, m_activate)

```


### <a name="create_delete_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.create_delete_subaccount") create_delete_subaccount

> Delete sub account or merge numbers into parent


```ruby
def create_delete_subaccount(sub_account_sid,
                                 merge_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sub_account_sid |  ``` Required ```  | The SubaccountSid to be deleted |
| merge_number |  ``` Required ```  | 0 to delete or 1 to merge numbers to parent account. |


#### Example Usage

```ruby
sub_account_sid = 'SubAccountSID'
merge_number = YtelApiv3::MergeNumberEnum::ENUM_0

result = subAccount_controller.create_delete_subaccount(sub_account_sid, merge_number)

```


### <a name="create_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubAccountController.create_subaccount") create_subaccount

> Create a sub user account under the parent account


```ruby
def create_subaccount(first_name,
                          last_name,
                          email,
                          friendly_name,
                          password); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| first_name |  ``` Required ```  | Sub account user first name |
| last_name |  ``` Required ```  | sub account user last name |
| email |  ``` Required ```  | Sub account email address |
| friendly_name |  ``` Required ```  | Descriptive name of the sub account |
| password |  ``` Required ```  | The password of the sub account.  Please make sure to make as password that is at least 8 characters long, contain a symbol, uppercase and a number. |


#### Example Usage

```ruby
first_name = 'FirstName'
last_name = 'LastName'
email = 'Email'
friendly_name = 'FriendlyName'
password = 'Password'

result = subAccount_controller.create_subaccount(first_name, last_name, email, friendly_name, password)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AddressController") AddressController

### Get singleton instance

The singleton instance of the ``` AddressController ``` class can be accessed from the API Client.

```ruby
address_controller = client.address
```

### <a name="create_delete_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_delete_address") create_delete_address

> To delete Address to your address book


```ruby
def create_delete_address(addressid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be deleted. |


#### Example Usage

```ruby
addressid = 'addressid'

result = address_controller.create_delete_address(addressid)

```


### <a name="create_verify_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_verify_address") create_verify_address

> Validates an address given.


```ruby
def create_verify_address(addressid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be verified. |


#### Example Usage

```ruby
addressid = 'addressid'

result = address_controller.create_verify_address(addressid)

```


### <a name="create_view_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_view_address") create_view_address

> View Address Specific address Book by providing the address id


```ruby
def create_view_address(addressid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressid |  ``` Required ```  | The identifier of the address to be retrieved. |


#### Example Usage

```ruby
addressid = 'addressid'

result = address_controller.create_view_address(addressid)

```


### <a name="create_list_addresses"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_list_addresses") create_list_addresses

> List All Address 


```ruby
def create_list_addresses(page = nil,
                              pagesize = nil,
                              addressid = nil,
                              date_created = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | How many results to return, default is 10, max is 100, must be an integer |
| addressid |  ``` Optional ```  | addresses Sid |
| date_created |  ``` Optional ```  | date created address. |


#### Example Usage

```ruby
page = 153
pagesize = 153
addressid = 'addressid'
date_created = 'dateCreated'

result = address_controller.create_list_addresses(page, pagesize, addressid, date_created)

```


### <a name="create_address"></a>![Method: ](https://apidocs.io/img/method.png ".AddressController.create_address") create_address

> To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.


```ruby
def create_address(name,
                       address,
                       country,
                       state,
                       city,
                       zip,
                       description = nil,
                       email = nil,
                       phone = nil); end
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
| description |  ``` Optional ```  | Description of addresses. |
| email |  ``` Optional ```  | Email Id of user. |
| phone |  ``` Optional ```  | Phone number of user. |


#### Example Usage

```ruby
name = 'Name'
address = 'Address'
country = 'Country'
state = 'State'
city = 'City'
zip = 'Zip'
description = 'Description'
email = 'email'
phone = 'Phone'

result = address_controller.create_address(name, address, country, state, city, zip, description, email, phone)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="recording_controller"></a>![Class: ](https://apidocs.io/img/class.png ".RecordingController") RecordingController

### Get singleton instance

The singleton instance of the ``` RecordingController ``` class can be accessed from the API Client.

```ruby
recording_controller = client.recording
```

### <a name="create_delete_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.create_delete_recording") create_delete_recording

> Remove a recording from your Ytel account.


```ruby
def create_delete_recording(recordingsid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for a recording. |


#### Example Usage

```ruby
recordingsid = 'recordingsid'

result = recording_controller.create_delete_recording(recordingsid)

```


### <a name="create_view_recording"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.create_view_recording") create_view_recording

> Retrieve the recording of a call by its RecordingSid. This resource will return information regarding the call such as start time, end time, duration, and so forth.


```ruby
def create_view_recording(recordingsid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recordingsid |  ``` Required ```  | The unique identifier for the recording. |


#### Example Usage

```ruby
recordingsid = 'recordingsid'

result = recording_controller.create_view_recording(recordingsid)

```


### <a name="create_list_recordings"></a>![Method: ](https://apidocs.io/img/method.png ".RecordingController.create_list_recordings") create_list_recordings

> Retrieve a list of recording objects.


```ruby
def create_list_recordings(page = nil,
                               pagesize = nil,
                               datecreated = nil,
                               callsid = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| datecreated |  ``` Optional ```  | Filter results by creation date |
| callsid |  ``` Optional ```  | The unique identifier for a call. |


#### Example Usage

```ruby
page = 153
pagesize = 153
datecreated = 'Datecreated'
callsid = 'callsid'

result = recording_controller.create_list_recordings(page, pagesize, datecreated, callsid)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transcription_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TranscriptionController") TranscriptionController

### Get singleton instance

The singleton instance of the ``` TranscriptionController ``` class can be accessed from the API Client.

```ruby
transcription_controller = client.transcription
```

### <a name="create_transcribe_audio_url"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.create_transcribe_audio_url") create_transcribe_audio_url

> Transcribe an audio recording from a file.


```ruby
def create_transcribe_audio_url(audiourl); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| audiourl |  ``` Required ```  | URL pointing to the location of the audio file that is to be transcribed. |


#### Example Usage

```ruby
audiourl = 'audiourl'

result = transcription_controller.create_transcribe_audio_url(audiourl)

```


### <a name="create_transcribe_recording"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.create_transcribe_recording") create_transcribe_recording

> Transcribe a recording by its RecordingSid.


```ruby
def create_transcribe_recording(recording_sid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| recording_sid |  ``` Required ```  | The unique identifier for a recording object. |


#### Example Usage

```ruby
recording_sid = 'recordingSid'

result = transcription_controller.create_transcribe_recording(recording_sid)

```


### <a name="create_view_transcription"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.create_view_transcription") create_view_transcription

> Retrieve information about a transaction by its TranscriptionSid.


```ruby
def create_view_transcription(transcriptionsid); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transcriptionsid |  ``` Required ```  | The unique identifier for a transcription object. |


#### Example Usage

```ruby
transcriptionsid = 'transcriptionsid'

result = transcription_controller.create_view_transcription(transcriptionsid)

```


### <a name="create_list_transcriptions"></a>![Method: ](https://apidocs.io/img/method.png ".TranscriptionController.create_list_transcriptions") create_list_transcriptions

> Retrieve a list of transcription objects for your Ytel account.


```ruby
def create_list_transcriptions(page = nil,
                                   pagesize = nil,
                                   status = nil,
                                   date_transcribed = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | The page count to retrieve from the total results in the collection. Page indexing starts at 1. |
| pagesize |  ``` Optional ```  | The count of objects to return per page. |
| status |  ``` Optional ```  | The state of the transcription. |
| date_transcribed |  ``` Optional ```  | The date the transcription took place. |


#### Example Usage

```ruby
page = 153
pagesize = 153
status = YtelApiv3::Status12Enum::INPROGRESS
date_transcribed = 'dateTranscribed'

result = transcription_controller.create_list_transcriptions(page, pagesize, status, date_transcribed)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="usage_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UsageController") UsageController

### Get singleton instance

The singleton instance of the ``` UsageController ``` class can be accessed from the API Client.

```ruby
usage_controller = client.usage
```

### <a name="create_list_usage"></a>![Method: ](https://apidocs.io/img/method.png ".UsageController.create_list_usage") create_list_usage

> Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.


```ruby
def create_list_usage(product_code = nil,
                          start_date = nil,
                          end_date = nil,
                          include_sub_accounts = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| product_code |  ``` Optional ```  | Filter usage results by product type. |
| start_date |  ``` Optional ```  | Filter usage objects by start date. |
| end_date |  ``` Optional ```  | Filter usage objects by end date. |
| include_sub_accounts |  ``` Optional ```  | Will include all subaccount usage data |


#### Example Usage

```ruby
product_code = YtelApiv3::ProductCodeEnum::ENUM_0
start_date = 'startDate'
end_date = 'endDate'
include_sub_accounts = 'IncludeSubAccounts'

result = usage_controller.create_list_usage(product_code, start_date, end_date, include_sub_accounts)

```


[Back to List of Controllers](#list_of_controllers)



