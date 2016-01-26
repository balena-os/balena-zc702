deviceTypesCommon = require 'resin-device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	slug: 'zynq-xz702'
	aliases: [ 'zc702-zynq7' ]
	name: 'Zynq ZC702'
	arch: 'armv7hf'
	state: 'preview'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-Zynq-ZC702.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-Zynq-ZC702.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-Zynq-ZC702.md#on-mac-and-linux'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'zc702-zynq7'
		image: 'resin-image'
		fstype: 'resin-sdcard'
		version: 'yocto-fido'
		deployArtifact: 'resin-image-zc702-zynq7.resin-sdcard'

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'
