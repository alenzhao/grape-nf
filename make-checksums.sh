#!/bin/bash
PROFILE=${PROFILE-testGemFlux}
cut -f3 pipeline.db | xargs md5sum | awk '{split($2, a, "/");print $1"  "a[length(a)]}' | sort -k2,2 > data/${PROFILE}.md5