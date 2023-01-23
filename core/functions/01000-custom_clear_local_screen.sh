#!/bin/bash

function cls() {
  print "${clearall:='\u001b[2J\u001b[0;0H'}"
  pw
}
