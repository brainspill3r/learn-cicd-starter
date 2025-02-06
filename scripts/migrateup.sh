#!/bin/bash

if [ -f .env ]; then
    source .env
fi

cd sql/schema
~/go/bin/goose sqlite $DATABASE_URL up
