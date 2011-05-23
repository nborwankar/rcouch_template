-module({{appid}}_httpd_misc).

-include_lib("couch/include/couch_db.hrl").

-export([handle_welcome_req/1, handle_welcome_req/2]).

handle_welcome_req(Req) ->
    handle_welcome_req(Req, <<"Welcome">>).

handle_welcome_req(#httpd{method='GET'}=Req, WelcomeMessage) ->
    couch_httpd:send_json(Req, {[
        {couchdb, WelcomeMessage},
        {version, list_to_binary(couch:version())},
        {<<"{{appid}}">>, {{appid}}:get_version()}
    ]});
handle_welcome_req(Req, _) ->
    couch_httpd:send_method_not_allowed(Req, "GET,HEAD").
