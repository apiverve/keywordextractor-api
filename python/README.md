Keyword Extractor API
============

Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-keywordextractor.svg)](https://pypi.org/project/apiverve-keywordextractor/)

This is a Python wrapper for the [Keyword Extractor API](https://apiverve.com/marketplace/keywordextractor?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-keywordextractor
```

Using `pip3`:

```bash
pip3 install apiverve-keywordextractor
```

---

## Configuration

Before using the Keyword Extractor API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient

# Initialize the client with your APIVerve API key
api = KeywordextractorAPIClient("[YOUR_API_KEY]")

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Keyword Extractor API documentation is found here: [https://docs.apiverve.com/ref/keywordextractor](https://docs.apiverve.com/ref/keywordextractor?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient

# Initialize the client with your APIVerve API key
api = KeywordextractorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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
    ]
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `KeywordextractorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient, KeywordextractorAPIClientError

api = KeywordextractorAPIClient("[YOUR_API_KEY]")

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except KeywordextractorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient, KeywordextractorAPIClientError

api = KeywordextractorAPIClient("[YOUR_API_KEY]")

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except KeywordextractorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient, KeywordextractorAPIClientError

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

# Using context manager ensures proper cleanup
with KeywordextractorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except KeywordextractorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient

# Enable debug mode
api = KeywordextractorAPIClient("[YOUR_API_KEY]", debug=True)

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_keywordextractor.apiClient import KeywordextractorAPIClient

api = KeywordextractorAPIClient("[YOUR_API_KEY]")

query = { "text": "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
