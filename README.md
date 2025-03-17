![Build Status](https://github.com/zendesk/luhn_checksum/actions/workflows/ci.yml/badge.svg)

luhn_checksum
=============

Implementation of the [Luhn algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm) for detecting credit
card numbers in a stream of input text.

Example:

```Ruby
LuhnChecksum.valid?('123451234512348')
```

### Limitations

* `LuhnChecksum.valid?` currently assumes that input text has already been validated to consist of only
digits. An exception will be thrown if non-digits are passed in.
* `LuhnChecksum.valid?` does not validate that the number passed in is any particular length.
The number `6789` will be considered valid, even though most credit card numbers are between
13 and 19 digits in length.

### Releasing a new version
A new version is published to RubyGems.org every time a change to `version.rb` is pushed to the `main` branch.
In short, follow these steps:
1. Update `version.rb`,
2. run `bundle lock` to update `Gemfile.lock`,
3. merge this change into `main`, and
4. look at [the action](https://github.com/zendesk/luhn_checksum/actions/workflows/publish.yml) for output.

To create a pre-release from a non-main branch:
1. change the version in `version.rb` to something like `1.2.0.pre.1` or `2.0.0.beta.2`,
2. push this change to your branch,
3. go to [Actions → “Publish to RubyGems.org” on GitHub](https://github.com/zendesk/luhn_checksum/actions/workflows/publish.yml),
4. click the “Run workflow” button,
5. pick your branch from a dropdown.

### License

Apache License 2.0
