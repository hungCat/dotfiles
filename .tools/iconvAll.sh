#!/bin/sh

PROGNAME=`basename $0`
VERSION="1.0"

# default
FROMCODE='SJIS'
TOCODE='UTF8'

usage() {
	echo "Usage: $PROGNAME [OPTIONS] REGEX"
	echo "  This script is ~."
	echo
	echo "Options:"
	echo "  -h, --help"
	echo "  -f, --from-code CODE"
	echo "  -t, --to-code   CODE"
	echo
	exit 1
}

for OPT in "$@"
do
	case "$OPT" in
		'-h'|'--help' )
			usage
			exit 1
			;;
		'-f'|'--from-code' )
			if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
				echo "$PROGNAME: option requires an argument -- $1" 1>&2
				exit 1
			fi
			FROMCODE=$2
			shift 2
			;;
		'-t'|'--to-code' )
			if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
				echo "$PROGNAME: option requires an argument -- $1" 1>&2
				exit 1
			fi
			TOCODE=$2
			shift 2
			;;
		-*)
			echo "$PROGNAME: illegal option -- '$(echo $1 | sed 's/^-*//')'" 1>&2
			exit 1
			;;
		*)
			if [[ ! -z "$1" ]] && [[ ! "$1" =~ ^-+ ]]; then
				#param=( ${param[@]} "$1" )
				#param+=( "$1" )
				regex="$1"
				shift 1
			fi
			;;
	esac
done

if [ -z $regex ]; then
	echo "$PROGNAME: too few arguments" 1>&2
	echo "Try '$PROGNAME --help' for more information." 1>&2
	exit 1
fi



#複数ファイルを変換する例
for f in `ls $regex`
do
	if iconv -f $FROMCODE -t $TOCODE < $f > ${f}.tmp; then
		mv ${f}.tmp $f
	fi
done

