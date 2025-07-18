#!/bin/bash
pidof nginx >/dev/null || exit 1
exit 0
