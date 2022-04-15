#!/bin/bash

set -o pipefail
set -exu

if [ ! -r "$BASELINE_FILE" ]; then

    if [ "$REQUIRE_BASELINE" -eq 0 ]; then
        echo "Hello world"
        detect-secrets scan >"$BASELINE_FILE"
    else
        echo "No readable detect-secrets baseline file found at '$BASELINE_FILE', and it was set to required by \$DS_REQUIRE_BASELINE ($REQUIRE_BASELINE)" >&2
        exit 1
    fi

fi

#detect-secrets -v audit "$BASELINE_FILE"
detect-secrets scan #"$ADDL_ARGS"
