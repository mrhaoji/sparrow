#!/bin/sh
# @Author: mrhaoji
# @Date:   2013-11-13 12:01:22
# @Last Modified by:   mrhaoji
# @Last Modified time: 2013-11-13 17:20:52
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:20502 | sed -n 2p))
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:20501 | sed -n 2p))
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:20503 | sed -n 2p))
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:20507 | sed -n 2p))
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:20101 | sed -n 2p))
kill -9 $(awk -F' ' '{ print $2 }'<<<$(lsof -w -n -i tcp:50201 | sed -n 2p))