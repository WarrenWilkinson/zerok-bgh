
NAME:=$(shell awk -F"'" '/shortname/ { print $$2 }' modinfo.lua)
VERSION:=$(shell awk -F"'" '/version/ { print $$2 }' modinfo.lua)

$(info $$NAME is [${NAME}])
$(info $$VERSION is [${VERSION}])

all : zip
zip : ${NAME}-${VERSION}.sdz
${NAME}-${VERSION}.sdz : modinfo.lua LuaRules/Gadgets/unit_mex_overdrive.lua scripts/staticmex.lua
	echo ${NAME}
	zip "$@" $^


