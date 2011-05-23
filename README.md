# Rebar templates for generating custom couchdb releases 

This is a rebar template that allows you to create your own CouchDB
releases based on rebared version provided by the [refuge
project](http://refuge.io). 

The version of CouchDB provided is based on couchdb trunk for now and
can be used on Linux, FreeBSD 8.0x and sup, MacOSX 10.6/10.7 with Erlang
R13B04/R14x.

##Installation:

Install [rebar](https://github.com/basho/rebar). You can do that via
homebrew:

    $ brew update
    $ brew install rebar

*Note:*make sure to use latest rebar version/

Drop these templates in ~/.rebar/templates.

    
##Create a custom CouchDB release

To create a custom release of CouchDB with your own plugins, use the
**rcouch** template:

    $ mkdir myapp
    $ rebar create template=rcouch appid=myapp


Then a full custom release has been installed. To use it:

    $ ./configure
    $ make dev
    $ ./rel/dev/bin/myapp

or create a full release and install it by running the command line:

    $ make install


You can now start to customize your release by adding your plugins to
rebar config and editing rel/reltool.config.

##Embed CouchDB in your application

To start an Erlang OTP application that embed CouchDB, use the
**rebar_embed** template:

    $ mkdir myapp
    $ rebar create template=rcouch_embed appid=myapp

It create a custom app in apps/myapp/src that you can edit. Then use it
like above.
