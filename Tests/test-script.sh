#!/bin/bash
set -e

if [[ -n "${LANGUAGE_VERSION}" ]]
then
  VERSION_OPTION="-Xswiftc -swift-version -Xswiftc ${LANGUAGE_VERSION}"
fi

if [[ "${LANGUAGE_VERSION}" = "3" ]]
then
  TEST_OPTIONS=""
else
  TEST_OPTIONS="-c release"
fi

if [[ "${COMPILER_MAJOR_VERSION}" = "3" ]]
then
  # this is version 3.1 of the swift compiler
  # it doesn't handle SE-0151 right
  swift package tools-version --set 3.1
fi

swift --version
swift test ${TEST_OPTIONS} ${VERSION_OPTION}
