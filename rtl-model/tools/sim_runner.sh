#!/bin/bash -e

function usage {
    echo "usage: $(basename "$0") [options]"
    echo "  options:"
    echo "      -g,     show GUI"
    echo "      -l,     list available tests"
    echo "      -t,     specify the test name"
    exit 1
}

if [[ $# -eq 0 ]]; then
    usage
fi

while getopts glt: option; do
    case ${option} in
        g) gui=1;;
        l) list_available_test=1;;
        t) test_name=${OPTARG};;
        *) usage;;
    esac
done

cd ${ROOTDIR}/dv

if [[ ${list_available_test} ]]; then
    ls -1
    exit 0
fi

if [[ ! -d ${test_name} ]]; then
    echo "ERROR: incorrect test name"
    exit 1
fi

cd ${test_name}

if [[ ${gui} ]]; then
    vsim -do run.do
else
    vsim -c -do run.do
fi

[[ $(tail -n 1 transcript) =~ Errors:\ ([0-9]+),\ Warnings:\ ([0-9]+) ]]
errors=${BASH_REMATCH[1]}
warnings=${BASH_REMATCH[2]}
test_result=${errors}

exit ${test_result}