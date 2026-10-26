# Keyword Extractor API

Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.

[![npm version](https://img.shields.io/npm/v/@apiverve/keywordextractor.svg)](https://www.npmjs.com/package/@apiverve/keywordextractor)

This is a JavaScript wrapper for the [Keyword Extractor API](https://apiverve.com/marketplace/keywordextractor?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/keywordextractor
```

Using yarn:
```shell
yarn add @apiverve/keywordextractor
```

---

## Configuration

Before using the Keyword Extractor API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Keyword Extractor API documentation is found here: [https://docs.apiverve.com/ref/keywordextractor](https://docs.apiverve.com/ref/keywordextractor?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const keywordextractorAPI = require('@apiverve/keywordextractor');
const api = new keywordextractorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data."
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data."
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data."
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "url": "https://en.wikipedia.org/wiki/Email_address",
    "keywordCount": 50,
    "topKeyword": "email",
    "totalOccurrences": 672,
    "keywords": {
      "email": 94,
      "address": 61,
      "mail": 52,
      "domain": 34,
      "addresses": 34,
      "characters": 27,
      "retrieved": 27,
      "internet": 17,
      "message": 15,
      "validation": 12
    },
    "topKeywords": [
      {
        "keyword": "email",
        "count": 94,
        "percentage": 14
      },
      {
        "keyword": "address",
        "count": 61,
        "percentage": 9.1
      },
      {
        "keyword": "mail",
        "count": 52,
        "percentage": 7.7
      },
      {
        "keyword": "domain",
        "count": 34,
        "percentage": 5.1
      },
      {
        "keyword": "addresses",
        "count": 34,
        "percentage": 5.1
      }
    ],
    "keyPhrases": [
      {
        "phrase": "email addresses",
        "relevance": 0.621,
        "count": 5
      },
      {
        "phrase": "mail exchange",
        "relevance": 0.578,
        "count": 4
      },
      {
        "phrase": "email address wikipedia",
        "relevance": 0.574,
        "count": 1
      },
      {
        "phrase": "mail system",
        "relevance": 0.558,
        "count": 2
      },
      {
        "phrase": "smtp",
        "relevance": 0.523,
        "count": 4
      },
      {
        "phrase": "valid email",
        "relevance": 0.512,
        "count": 2
      },
      {
        "phrase": "mail transfer",
        "relevance": 0.491,
        "count": 2
      },
      {
        "phrase": "mailbox host",
        "relevance": 0.463,
        "count": 2
      },
      {
        "phrase": "rfc",
        "relevance": 0.422,
        "count": 5
      },
      {
        "phrase": "domain name",
        "relevance": 0.36,
        "count": 4
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
