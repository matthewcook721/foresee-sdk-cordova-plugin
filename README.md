# foresee-sdk-cordova-plugin

----
## Android

* Add the ForeSee plugin to your project 

`cordova plugin add https://github.com/foreseecode/foresee-sdk-cordova-plugin`

> this will automaticly add `    compile "com.foresee.sdk:sdk:+"` to your `build.gradle` file

* All initial steps are same as described in our  [Android Getting Started](https://developer.foresee.com/docs/tutorial)

* Add a new Application class to your project and AndroidManifest.xml.

> skip this step if you already have one

* Add `foresee_configuration.json` file in your `res/raw` folder as described [Android Getting Started](https://developer.foresee.com/docs/tutorial)

* Call the `ForeSee.start(this)` in your Application class within you `onCreate` method

* Now you can use `cordova.plugins.ForeSeeAPI` in your JavaScript code for example:

`cordova.plugins.ForeSeeAPI.checkEligibility(_onSuccess, _onFailure);`

* Fore all suported methods please check out official portal [ForeSee Developer Portal](https://developer.foresee.com)
   
----
## iOS

* Add the ForeSee plugin to your project 

`cordova plugin add https://github.com/foreseecode/foresee-sdk-cordova-plugin`

* All initial steps are same as described in our [iOS Getting Started](https://developer.foresee.com/docs/getting-started)

* Add `foresee_configuration.json` file to your iOS project.

* Add those two methods in your AppDelegate as described in our [iOS Getting Started](https://developer.foresee.com/docs/getting-started)

> -(BOOL)application:(UIApplication *)application 
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        [ForeSee start];
        [ForeSee checkIfEligibleForSurvey];
}

> -(void)applicationDidBecomeActive:(UIApplication *)application 
{
  [ForeSee checkIfEligibleForSurvey];
}

* Now you can use `cordova.plugins.ForeSeeAPI` in your JavaScript code for example:

`cordova.plugins.ForeSeeAPI.checkEligibility(_onSuccess, _onFailure);`

* Fore all suported methods please check out official portal [ForeSee Developer Portal](https://developer.foresee.com)