#!/bin/sh

check_5() {
logit "\n"
info "5  - Container Runtime"
}

check_running_containers() {
  # If containers is empty, there are no running containers
  if [ -z "$containers" ]; then
    info "     * No containers running, skipping Section 5"
    running_containers=0
  else
    running_containers=1
    # Make the loop separator be a new-line in POSIX compliant fashion
    set -f; IFS=$'
  '
  fi
}

# 5.1
check_5_1() {
  if [ "$running_containers" -ne 1 ]; then
    return
  fi



 
}











