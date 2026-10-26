# Keyword Extractor API - Ruby Gem

Keyword Extractor is a keyword extraction API that scans raw text or live webpage URLs to extract key terms and their frequencies. It returns up to 50 unique keywords, occurrence counts, total keyword volume, and the top five terms with their percentage share.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_keywordextractor'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_keywordextractor
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_keywordextractor'

# Initialize the client
client = APIVerve::Keywordextractor::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Machine learning is a subset of artificial intelligence that enables systems to learn from data. Deep learning uses neural networks to process complex patterns in data." })
  puts response["data"]
rescue APIVerve::Keywordextractor::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Keywordextractor::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Keywordextractor::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/keywordextractor?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/keywordextractor?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/keywordextractor?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
