#!/bin/bash

cluster_name="LocalNetworkServer"

run_shared=(./bin/dontstarve_dedicated_server_nullrenderer)
run_shared+=(-console)
run_shared+=(-cluster "${cluster_name}")
run_shared+=(-monitor_parent_process $$)

"${run_shared[@]}" -shard Caves | sed 's/^/\e[36mCaves:   /' &
"${run_shared[@]}" -shard Caves | sed 's/^/\e[35mMaster:  /'
