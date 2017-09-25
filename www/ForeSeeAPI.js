var exec = require('cordova/exec');

const ForeSeeAPI = "ForeSeeAPI";

/**
 * @description
 * Programmatically present the survey for a given survey ID (sid)
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.showSurvey(["app_test_1"], _onSuccess, _onFailure);`
 * 
 * @param  {array} args - Array of parameters. Required by cordova's plugin EXEC.
 * @param  {callback} success - A Cordova-style success callback object.
 * @param  {callback} error - A Cordova-style error callback object.
 */
exports.showSurvey = function (args, success, error) {
    exec(success, error, ForeSeeAPI, "showSurvey", args);
};


/**
 * @description
 * Programmatically present the invitation for a given survey ID (sid)
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.showInvite(["app_test_1"], _onSuccess, _onFailure);`
 * 
 * @param {array} args 
 * @param {callback} success 
 * @param {callback} error 
 */
exports.showInvite = function (args, success, error) {
    exec(success, error, ForeSeeAPI, "showInvite", args);
};


/**
 * @description
 * Check to see if the user is eligible for a survey.
 * If the user meets trigger criteria *and* are in the sampling pool, the invitation is presented.
 * Implementers must explicitly check for eligibility (the SDK does not do this automatically).
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.checkEligibility(_onSuccess, _onFailure);`
 * 
 * @param {callback} success 
 * @param {callback} error 
 */
exports.checkEligibility = function (success, error) {
    exec(success, error, ForeSeeAPI, "checkEligibility", []);
};

/**
 * @description
 * Adds a CPP key/value pair. CPPs are transmitted along with surveys upon submission.
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.addCPPValue(["hello", "bye"], _onSuccess, _onFailure);`
 * 
 * @param {array} args - Array of parameters. Required by cordova's plugin EXEC.
 * @param {callback} success - A Cordova-style success callback object.
 * @param {callback} error - A Cordova-style error callback object.
 */
exports.addCPPValue = function (args, success, error) {
    exec(success, error, ForeSeeAPI, "addCPPValue", args);
};


/**
 * @description
 * Removes a CPP value
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.removeCPPValue(["hello"], _onSuccess, _onFailure);`
 * 
 * @param {array} args Array of parameters. Required by cordova's plugin EXEC.
 * @param {callback} success - A Cordova-style success callback object.
 * @param {callback} error - A Cordova-style error callback object.
 */
exports.removeCPPValue = function (args, success, error) {
    exec(success, error, ForeSeeAPI, "removeCPPValue", args);
};


/**
 * @description
 * Manually increment the number of pages counted by the ForeSee SDK.
 * This can be useful when the user would consider a new page to have been shown, but the activity has not been changed, e.g. when using full screen fragments
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.incrementPageViews(_onSuccess, _onFailure);`
 * 
 * @param {callback} success 
 * @param {callback} error 
 */
exports.incrementPageViews = function (success, error) {
    exec(success, error, ForeSeeAPI, "incrementPageViews", []);
};


/**
 * @description
 * Increment the significant event count for a given key
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.incrementSignificantEventCount(["hello"], _onSuccess, _onFailure);`
 * 
 * @param {array} args 
 * @param {callback} success 
 * @param {callback} error 
 */
exports.incrementSignificantEventCount = function (args, success, error) {
    exec(success, error, ForeSeeAPI, "incrementSignificantEvent", args);
};



/**
 * @description 
 * Reset the state of the tracker and (if applicable) reactivates the Replay module.
 * 
 * @example
 * `cordova.plugins.ForeSeeAPI.resetState(_onSuccess, _onFailure);`
 * 
 * @param {callback} success 
 * @param {callback} error 
 */
exports.resetState = function (success, error) {
    exec(success, error, ForeSeeAPI, "resetState", []);
};
