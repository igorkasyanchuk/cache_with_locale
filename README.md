[![Build Status](https://travis-ci.org/igorkasyanchuk/cache_with_locale.svg?branch=master)](https://travis-ci.org/igorkasyanchuk/cache_with_locale)

# Rails cache with locale
Automatically adding current application locale (I18n.locale) as a part of caching key in Rails views.

## Problem & Solution
For example you have:
- Rails app with different locales
- you want to add fragment caching in views

When you have a different locales and you adding a caching you writing code like this

```
  = cache [@user, I18n.locale] do
    = render @user
```

As you see you need to add `I18n.locale` as a part of caching key. And you need to do it everywhere. What if you forget about it in some view?

This gem is a simple solution which allows you to DRY your code. So now you can write

```
  = cache @user do
    = render @user
```

And let gem handle all work. You don't need to specify locale as a cache sufix/prefix.

## Usage
Just add this gem to your Gemfile.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cache_with_locale'
```

And then execute:
```bash
$ bundle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
