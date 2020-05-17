#!/bin/bash

ns_var() {
  local _ns=$1
  local _var_name=$2
  local _var=$3
  eval "${_ns}::${_var_name}() {
    \"$_var\"
  }"
}

ns_var ns var "foo"

ns::var

ns_func() {
  local _ns=$1
  local _func=$2
  local _code=$3
  eval "${_ns}::${_func}() {
    $_code
  }"
}

ns_func ns f "
  echo foo
"

ns::f

