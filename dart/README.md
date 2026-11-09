# Keyword Extractor API - Dart/Flutter Client

Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.

[![pub package](https://img.shields.io/pub/v/apiverve_keywordextractor.svg)](https://pub.dev/packages/apiverve_keywordextractor)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Keyword Extractor API](https://apiverve.com/marketplace/keywordextractor?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_keywordextractor: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_keywordextractor/apiverve_keywordextractor.dart';

void main() async {
  final client = KeywordextractorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data.'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Keyword Extractor API](https://apiverve.com/marketplace/keywordextractor?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/keywordextractor](https://docs.apiverve.com/ref/keywordextractor?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
