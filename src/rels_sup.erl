-module(rels_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

%%
%% External API
%%

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%%
%% supervisor callbacks
%%

init([]) ->
    {ok, { {one_for_one, 5, 10}, []} }.
