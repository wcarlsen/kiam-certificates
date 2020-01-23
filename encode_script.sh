#!/bin/bash

for file in *.pem; do echo $file && base64 $file && echo -n ""; done