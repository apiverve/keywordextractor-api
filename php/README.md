# Keyword Extractor API - PHP Package

Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.

## Installation

Install via Composer:

```bash
composer require apiverve/keywordextractor
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Keywordextractor\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data.']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Keywordextractor\Client;
use APIVerve\Keywordextractor\Exceptions\APIException;
use APIVerve\Keywordextractor\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data.']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/keywordextractor?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/keywordextractor?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/keywordextractor?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
