#!/bin/zsh

launch() {
  $@ > /dev/null 2>&1 &!
}
