deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'zynq-xz702'
	aliases: [ 'zc702-zynq7' ]
	name: 'Zynq ZC702'
	arch: 'armv7hf'
	state: 'discontinued'

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
		fstype: 'resinos-img'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-zc702-zynq7.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'
