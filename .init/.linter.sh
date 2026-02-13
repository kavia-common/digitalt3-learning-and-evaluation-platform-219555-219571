#!/bin/bash
cd /home/kavia/workspace/code-generation/digitalt3-learning-and-evaluation-platform-219555-219571/digitalt3_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

