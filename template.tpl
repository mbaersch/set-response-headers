___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Set Response Headers",
  "description": "set custom response headers",
  "categories": [
    "UTILITY"
  ],
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "PARAM_TABLE",
    "name": "customHeaders",
    "displayName": "Response Headers",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "headerName",
          "displayName": "Header Name",
          "simpleValueType": true,
          "help": "define a header name (case-insensitive). Note: new values for existing headers reset already defined ones."
        },
        "isUnique": true
      },
      {
        "param": {
          "type": "TEXT",
          "name": "headerValue",
          "displayName": "Value",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ],
    "help": "define custom response headers to talk back to the request source."
  }
]


___SANDBOXED_JS_FOR_SERVER___

const setResponseHeader = require('setResponseHeader');

if (data.customHeaders) data.customHeaders.forEach((h, i) => {
  setResponseHeader(h.headerName, h.headerValue);
});     

data.gtmOnSuccess();


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_response",
        "versionId": "1"
      },
      "param": [
        {
          "key": "writeResponseAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "writeHeaderAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "writeHeadersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 22.8.2021, 23:58:41


