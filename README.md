[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![https://www.patreon.com/igorkasyanchuk](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/patron.svg?raw=true)](https://www.patreon.com/igorkasyanchuk)
[![Listed on OpenSource-Heroes.com](https://opensource-heroes.com/badge-v1.svg)](https://opensource-heroes.com/r/igorkasyanchuk/cache_with_locale)

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

This gem also works for collection caching like this:

```
  = render partial: :post, collection: @posts, cached: true
```

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

Contributors:


- https://github.com/pfeiffer
- https://github.com/dlackty

## Change Log

0.0.3

- https://github.com/igorkasyanchuk/cache_with_locale/pull/3

0.0.2

- https://github.com/igorkasyanchuk/cache_with_locale/pull/2

0.0.1

- initial version, ready for production

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=cache_with_locale)
