#!/bin/bash

function weather
{
    local args=${@:-}
    curl "wttr.in/${args}"
}
