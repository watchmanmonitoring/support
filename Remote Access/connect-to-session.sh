#!/bin/bash
set -i

ssh user-with-key@intermediary-ip
ssh destination-user@localhost -p4040