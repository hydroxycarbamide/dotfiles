#!/usr/bin/env bash
pkg_updates() {
  updates=$(paru -Qu | wc -l)
  if [ "$updates" -gt 0 ]; then
    echo -n "  $updates"
  fi
}
pkg_updates
