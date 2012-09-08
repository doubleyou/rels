all:
	rebar clean get-deps update-deps compile

erl:
	rebar compile

gen: erl
	rm -rf rel/rels
	rebar generate
