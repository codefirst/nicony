Nicony
===================

Overview
----------------

Nicony is a web interface for [Mina](http://nadarei.co/mina/).

Authors
----------------

 * @suer
 * @mallowlabs
 * @mzp

Requirement
----------------

 * Ruby 2.0.0
 * PostgreSQL 9.2 or later

Install
----------------

Install dependencies:

    $ bundle install --path .bundle --without development test

Precompile assets:

    $ bundle exec rake assets:precompile RAILS_ENV=production

Setup database:

    $ bundle exec rake db:migrate RAILS_ENV=production

Edit omniauth section in config/nicony.yml:

Run:

    $ bundle exec rails s -e production

and access to http://localhost:3000/

For developers
---------------

Setup database:

    $ bundle exec db:migrate RAILS_ENV=test

Run tests:

    $ bundle exec rake
