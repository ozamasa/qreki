# Qreki

This is the gem which calculates the old calendar "qreki".

## Installation

Add this line to your application's Gemfile:

    gem 'qreki'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qreki

## Usage

    >> qreki = Qreki.calc(2013,11,7)
    >> qreki.year    # 2013
    >> qreki.uruu    # false
    >> qreki.month   # 10
    >> qreki.day     # 5
    >> qreki.rokuyou # "友引"
    >> qreki.sekki   # "立冬"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
