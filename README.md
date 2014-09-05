# ebooks_example

As requested, this is the [twitter_ebooks](https://github.com/mispy/twitter_ebooks) app which I use to run most of my own bots. It tweets one guaranteed tweet every 24h, always responds to interactions, and has some small unprompted interaction probability based on keyword matching.

## Usage

```bash
git clone https://github.com/mispy/ebooks_example.git
cd ebooks_example
bundle install
ebooks archive username corpus/username.json
ebooks consume corpus/username.json
```
To create Twitter credentials, go to https://apps.twitter.com and create a new app.
Be sure to set the permissions to "Read, write, and direct messages" and then generate
new OAuth credentials which have those permissions. Copy .sample.env to .env and paste
in your credentials there.

** Never commit your twitter credentials to github!! **

Populate bots.rb with the bot username and model name and then:

`./run.rb`

Also runs as a Heroku app! See the [twitter_ebooks](https://github.com/mispy/twitter_ebooks) README for more information.

Configure your credentials for heroku like this:

```bash
heroku config:set OAUTH_TOKEN=foo OAUTH_TOKEN_SECRET=bar
```
