/********* ForeSeeAPI.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <ForeSee/ForeSee.h>

@interface ForeSeeAPI : CDVPlugin {
  // Member variables go here.
}

// methods exposed to JS as API
- (void)showSurvey: (CDVInvokedUrlCommand*)command;

- (void)showInvite: (CDVInvokedUrlCommand*)command;

- (void)checkEligibility: (CDVInvokedUrlCommand*)command;

- (void)addCPPValue: (CDVInvokedUrlCommand*)command;

- (void)removeCPPValue: (CDVInvokedUrlCommand*)command;

- (void)incrementPageViewsCount: (CDVInvokedUrlCommand*)command;

- (void)incrementSignificantEventCount: (CDVInvokedUrlCommand*)command;

- (void)resetState: (CDVInvokedUrlCommand*)command;

@end

@implementation ForeSeeAPI



- (void)checkEligibility: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [ForeSee checkIfEligibleForSurvey];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)showSurvey: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* surveyId = [command.arguments objectAtIndex:0];

    if (surveyId != nil && [surveyId length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

        [ForeSee showSurveyForSurveyID:surveyId];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }


    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)showInvite: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* surveyId = [command.arguments objectAtIndex:0];

    if (surveyId != nil && [surveyId length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

        [ForeSee showInviteForSurveyID:surveyId];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)addCPPValue: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* key = [command.arguments objectAtIndex:0];
    NSString* value = [command.arguments objectAtIndex:1];

     if (key != nil && [key length] > 0 && value != nil && [value length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [ForeSee setCPPValue:key forKey:key];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)removeCPPValue: (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* key = [command.arguments objectAtIndex:0];

    if (key != nil && [key length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [ForeSee removeCPPValueForKey:key];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)incrementPageViewsCount: (CDVInvokedUrlCommand*)command{
    
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [ForeSee incrementPageViews];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}


-(void)incrementSignificantEventCount: (CDVInvokedUrlCommand*)command{

    CDVPluginResult* pluginResult = nil;

    NSString* key = [command.arguments objectAtIndex:0];

    if (key != nil && [key length] > 0 ) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        [ForeSee incrementSignificantEventCountWithKey:key];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)resetState: (CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [ForeSee resetState];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
