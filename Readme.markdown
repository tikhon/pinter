# Pinter

The Ruby [PintPay API](https://www.pintpay.com/api_docs) Gem. PintPay helps collect payments for your app. Now with a Ruby wrapper.

## Install

    gem install pinter

## Usage

Get your API key and API secret from [your API page](https://www.pintpay.com/api_docs).

    Pinter.api_key = "25fdbd9bs0f3sa00f0ecg3e20bja1fag"
    Pinter.api_secret = "93a76x73afhe4hgbeqd2720e7eetfu19"
    Pinter.subdomain = "your-subdomain"

### List all subscriptions

Returns an array of your subscriptions.

    Pinter::Subscription.all

### Find specific subscription

Returns the hash of one subscription. Use the subscription's "secret" attribute to find it.

    Pinter::Subscription.find "23862dc3979f365d"

### URL

Returns the URL to your PintPay page.

    Pinter.url

You can also supply the parameters, like the user's email and identifier.

    Pinter.url :email => "user@domain.com", :identifier => "1"

## Todo

*   Tests.
*   Throw an exception when you forget to set your API key and secret.
*   Refactor the Pinter::Subscription default_params.
*   More tests.
*   Support PintPay's webhooks.

#### Copyright

Copyright (c) 2011 Nathan Borgo. See LICENSE for details.