# This file was generated by @liquid-labs/catalyst-builder-node. Refer to
# https://npmjs.com/package/@liquid-labs/catalyst-builder-node for further details

#####
# build dist/catalyst-server-exec.js
#####

CATALYST_CATALYST_SERVER_EXEC_JS:=$(DIST)/catalyst-server-exec.js
CATALYST_CATALYST_SERVER_EXEC_JS_ENTRY=$(SRC)/cli/index.js
BUILD_TARGETS+=$(CATALYST_CATALYST_SERVER_EXEC_JS)

$(CATALYST_CATALYST_SERVER_EXEC_JS): package.json $(CATALYST_ALL_NON_TEST_JS_FILES_SRC)
	JS_BUILD_TARGET=$(CATALYST_CATALYST_SERVER_EXEC_JS_ENTRY) \
	  JS_OUT=$@ \
	  JS_OUT_PREAMBLE='#!/usr/bin/env -S node --enable-source-maps' \
	  $(CATALYST_ROLLUP) --config $(CATALYST_ROLLUP_CONFIG)
	chmod a+x $@

#####
# end dist/catalyst-server-exec.js
#####