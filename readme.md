# Refinery CMS forms

[![Build Status](https://travis-ci.org/refinery/refinerycms-forms.svg?branch=master)](https://travis-ci.org/refinery/refinerycms-forms)

Simple forms engine generator for [Refinery CMS](http://refinerycms.com).

## Requirements

Refinery CMS version 3.0.0 or above.

## Install

Open up your ``Gemfile`` and add at the bottom this line:

```ruby
gem 'refinerycms-forms', github: 'refinery/refinerycms-forms', branch: 'master', group: :development
```

Now run `bundle install`.

##  Usage

### Example:
	$ rails generate refinery:form job_inquiry name:string message:text job_type:radio brochure:checkbox qualification:select

### Description

Generates a custom forms based extension for Refinery automatically.
It works very similarly to the Refinery Engine generator.

The first string attribute should always be the one which is the title or name field in your model.

There must be at least one attribute.

### Additional Supported Field Types

  All field types that are supported by the Refinery Engine generator are supported
  with the addition of these form specific ones:

  radio           - creates a set of radio buttons based off Model::FIELD_NAMES
  checkbox        - creates a checkbox for true/false values.
  select          - creates a select list with options using Model::FIELD_NAMES

## Developing & Contributing

The version of Refinery to develop this engine against is defined in the gemspec. To override the version of refinery to develop against, edit the project Gemfile to point to a local path containing a clone of refinerycms.

### Testing

Generate the dummy application to test against

    $ bundle exec rake refinery:testing:dummy_app

Run the test suite with [Guard](https://github.com/guard/guard)

    $ bundle exec guard start

Or just with rake spec

    $ bundle exec rake spec

## More Information
* Check out our [Website](http://refinerycms.com/)
* [Help and documentation](https://github.com/refinery/refinerycms#help-and-documentation)