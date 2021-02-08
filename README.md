<p align="center"><br><img src="https://user-images.githubusercontent.com/236501/85893648-1c92e880-b7a8-11ea-926d-95355b8175c7.png" width="128" height="128" /></p>
<h3 align="center">Card Scanner</h3>
<p align="center"><strong><code>@capacitor-community/card-scanner</code></strong></p>
<p align="center">
  Capacitor plugin for card scanner feature using the Google's <a href="https://developers.google.com/ml-kit">Maching Learning Toolkit</a> for <a href="https://developers.google.com/android/reference/com/google/mlkit/vision/text/TextRecognition">Text Recoginition</a>.  It is bassed on the <a href="https://github.com/nateshmbhat/card-scanner-flutter">Natesh Bhat</a>'s plugin.
</p>



<p align="center">
  <img src="https://img.shields.io/maintenance/yes/2021?style=flat-square" />
  <a href="https://github.com/capacitor-community/card-scanner/actions?query=workflow%3A%22CI%22"><img src="https://img.shields.io/github/workflow/status/capacitor-community/uxcam/CI?style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@capacitor-community/card-scanner"><img src="https://img.shields.io/npm/l/@capacitor-community/card-scanner?style=flat-square" /></a>
<br>
  <a href="https://www.npmjs.com/package/@capacitor-community/card-scanner"><img src="https://img.shields.io/npm/dw/@capacitor-community/card-scanner?style=flat-square" /></a>
  <a href="https://www.npmjs.com/package/@capacitor-community/card-scanner"><img src="https://img.shields.io/npm/v/@capacitor-community/card-scanner?style=flat-square" /></a>
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
<a href="#contributors-"><img src="https://img.shields.io/badge/all%20contributors-0-orange?style=flat-square" /></a>
<!-- ALL-CONTRIBUTORS-BADGE:END -->
</p>


## Maintainers

| Maintainer   | GitHub                                       | Social |
| ------------ | -------------------------------------------- | ------ |
| Luis Alaguna | [SalahAdDin](https://github.com/SalahAdDin/) |        |

## Installation

Install the package from the repository(by now):

```bash
npm install @capacitor-community/card-scanner
ionic cap update && ionic cap copy && ionic cap sync 
```

On iOS, no further steps are needed.

On Android:

* Add the `UXCam` *maven* repository to your projects build's *graddle* script:

  ```gradle
  maven {
  	url 'https://sdk.uxcam.com/android/'
  }
  ```

* Register the plugin in your main activity:

```java
import com.getcapacitor.community.uxcam.UXCamPlugin;

public class MainActivity extends BridgeActivity {
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // Initializes the Bridge
    this.init(savedInstanceState, new ArrayList<Class<? extends Plugin>>() {{
      // Additional plugins you've installed go here
      // Ex: add(TotallyAwesomePlugin.class);
      add(UXCamPlugin.class);
    }});
  }
}
```

## Configuration

No configuration is required for this plugin.

## Supported methods

The following are the [**UXCam**](https://uxcam.com/) implemented methogs on the plugin, for web plugin, **[FullStory](https://www.fullstory.com/)** methods are used:

| Name                          | Android | iOS  | Web  |
| :---------------------------- | :------ | :--- | :--- |
| startWithKey                  | ✅       | ✅    | ❌    |
| setUserIdentity               | ✅       | ✅    | ✅    |
| setUserProperty               | ✅       | ✅    | ✅    |
| setMultiSessionRecord         | ✅       | ✅    | ❌    |
| getEnabledMultiSessionRecord  | ✅       | ✅    | ❌    |
| logEvent                      | ✅       | ✅    | ✅    |
| tagScreenName                 | ✅       | ✅    | ❌    |
| setAutomaticScreenNameTagging | ✅       | ✅    | ❌    |
| stopSession                   | ✅       | ✅    | ✅    |

You can find the full list of **UXCam** methods [here](https://help.uxcam.com/hc/en-us/categories/115000129131-Developer-Guide) and **FullStory** methods [here](https://developer.fullstory.com/introduction).

## Usage

```typescript
// Must import the package once to make sure the web support initializes
import "@capacitor-community/uxcam"
import { Plugins } from "@capacitor/core"
import { LogEventProperty, UserProperty } from "@capacitor-community/uxcam"

const { UXCamPlugin } = Plugins

/**
 * Platform: Web/Android/iOS
 * Logs and event.
 * @param eventName: String - Event's name.
 * @param properties?: { [key: string]: string | number } - a optional set of event's properties to include in the log.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115000969072-Send-Events-and-Properties
 */
UXCamPlugin.logEvent(options: LogEventProperty)

/**
 * Platform: Android/iOS
 * Start the UXCam service with the API key.
 * @param UXCamKey: String - UXCam's API key.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115001868272
 */
UXCamPlugin.startWithKey(options: { UXCamKey: string })

/**
 * Platform: Web/Android/iOS
 * Set the user's identifier(a name)
 * @param userIdentity: String - User's identifier.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115000968992-Send-Additional-User-Information
 */
UXCamPlugin.setUserIdentity(options: { userIdentity: string })

/**
 * Platform: Web/Android/iOS
 * Set the user's properties.
 * @param properties: { [key: string]: string | number } - a set of user's properties(as email, phone, age, etc.).
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115000968992-Send-Additional-User-Information
 */
UXCamPlugin.setUserProperty(options: UserProperty)

/**
 * Platform: Android/iOS
 * Enables/disables the multisession record for users.
 * @param recordMultipleSessions: boolean - whether enables multi-session record per user or not.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115000968972-Control-Recording
 */
UXCamPlugin.setMultiSessionRecord(options: { recordMultipleSessions: boolean })

/**
 * Platform: Android/iOS
 * Get the multisession record status.
 * @param
 * @returns Promise<{ value: boolean }> - whether multi-session record per user is enabled or not.
 * https://help.uxcam.com/hc/en-us/articles/115000968972-Control-Recording
 */
UXCamPlugin.getEnabledMultiSessionRecord()

/**
 * Platform: Android/iOS
 * Set the name for a screen view in the application, it requires to dissable the automatic screen name tagging.
 * @param screenName: String - Screen view's name.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/360043007412-Tag-Screen-Name
 */
UXCamPlugin.tagScreenName(options: { screenName: string })

/**
 * Platform: Android/iOS
 * Enables/disables the automatic screen name tagging.
 * @param recordMultipleSessions: boolean - whether enables automatic screen name tagging or not.
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/360043007412-Tag-Screen-Name
 */
UXCamPlugin.setAutomaticScreenNameTagging(options: { enable: boolean }): Promise<void>;

/**
 * Platform: Web/Android/iOS
 * Stops the session record.
 * @param 
 * @returns void
 * https://help.uxcam.com/hc/en-us/articles/115000968972-Control-Recording
 */
UXCamPlugin.stopSession(): Promise<void>
```

## Further info

- [Android](https://help.uxcam.com/hc/en-us/articles/115000966252-Android-Integration)
- [iOS](https://help.uxcam.com/hc/en-us/articles/115001868272-iOS-Integration)
- [Web](https://developer.fullstory.com/introduction)

