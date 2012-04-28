# SpaceFrame - Spine

SpaceFrame for Spine is a set of Rails generators to implement ChaiOne's best practices for a client-side application. This version supports [Spine.js](http://www.spinejs.com), a popular client-side framework.

## Installation

Add this line to your application's Gemfile:

    gem 'space_frame_spine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spaceframe_spine

## Requirements

Although they aren't required, it's a pretty good idea to add the `spine-rails` and `eco` gems to your Gemfile. 

You could also provide your own [Spine.js](http://www.spinejs.com) libraries, and any Javascript templating engine that supports JST.

## Usage
    rails g spaceframe:new
    rails g spaceframe:model NAME [attributes]
    rails g spaceframe:section NAME

## What's a SpaceFrame?

Independently in 1900 and 1950, Alexander Graham Bell and Buckminster Fuller developed the [Space Frame](http://en.wikipedia.org/wiki/Space_frame), one of the strongest construction frameworks ever devised. It employs either a triagonal or octahedronal cross-truss shape to distribute loads. 

Space frames are used in architecture and performance vehicles, and are lightweight, inexpensive and easy to implement.