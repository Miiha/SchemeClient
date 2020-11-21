default: xcframework 

archive:
	@xcodebuild archive \
		-scheme XCallback \
		-destination "generic/platform=OS X" \
		-archivePath archive/macOS \
		SKIP_INSTALL=NO \
		BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcframework:
	@$(MAKE) archive
	@rm -fr ../XCallback.xcframework
	@xcodebuild -create-xcframework -framework archive/macOS.xcarchive/Products/Library/Frameworks/XCallback.framework/ -output ../XCallback.xcframework
	

.PHONY: archive \
	xcframework
