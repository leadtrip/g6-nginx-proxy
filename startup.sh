#!/bin/bash

function buildProjects () {
    echo assembling...
    ./gradlew assemble
}

function composeDown() {
  echo decomposing...
  docker-compose down
}

function composeUp() {
  echo composing...
  docker-compose up -d
}

function __run__() {
  composeDown
  buildProjects
  composeUp $@
}

__run__ $@