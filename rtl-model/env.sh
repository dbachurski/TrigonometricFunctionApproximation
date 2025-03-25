#!/bin/bash -e

if [[ "$0" != "${BASH_SOURCE}" ]]; then
    echo "ERROR: script cannot be sourced"
    return 1
fi

case $(hostname) in
    "fedora")
        export INTEL_FPGA_ROOTDIR=/opt/intelFPGA_lite/24.1std
        ;;
    *)
        echo "ERROR: unsupported host"
        return 1
esac

export QUARTUS_ROOTDIR=${INTEL_FPGA_ROOTDIR}/quartus
export QUESTA_ROOTDIR=${INTEL_FPGA_ROOTDIR}/questa_fse
export VERIFICATION_IP_ROOTDIR=${INTEL_FPGA_ROOTDIR}/ip/altera/sopc_builder_ip/verification
export LM_LICENSE_FILE=${QUESTA_ROOTDIR}/licenses/LR-225920_License.dat
export ROOTDIR=$(pwd)
export PATH=${ROOTDIR}/tools:${QUARTUS_ROOTDIR}/bin:${QUESTA_ROOTDIR}/bin:${PATH}

_sim_runner_completions() {
    if [[ ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=($(compgen -W "-a -gt -l -t" -- "${COMP_WORDS[1]}"))
    elif [[ ${COMP_CWORD} -eq 2 && ${COMP_WORDS[1]} =~ ^(-gt|-t) ]]; then
        COMPREPLY=($(compgen -W "$(ls ${ROOTDIR}/dv)" -- "${COMP_WORDS[2]}"))
    fi
}

export -f _sim_runner_completions

bash --init-file <(echo " \
    complete -F _sim_runner_completions sim_runner.sh; \
")
