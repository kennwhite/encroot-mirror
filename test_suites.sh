#!/bin/sh
###############################################################################
# This file contains alternative suites run by the test_encroot.sh script.    #
#                                                                             #
# It's included as is at the beginning of test_encroot.sh, but is a separate  #
# file to encourage users to add simple modifications and extra suites. This  #
# code is trivial, so I consider it to be in the public domain.               #
#                                                                             #
###############################################################################

SUITES="32_bits bigboot default distros failure
        newtype oldtype regions release trivial"

SUITE_32_bits() {
    DESCRIPTION="32-bit test for each supported distro"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="precise trusty utopic vivid squeeze wheezy"
    ARCHS="i386"
    TYPES="t1.micro t2.micro"
    OPTIONS="none"
}

SUITE_bigboot() {
    DESCRIPTION="Test with --big-boot on all distros"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="precise trusty utopic vivid squeeze wheezy jessie"
    ARCHS="x86_64"
    TYPES="t1.micro t2.micro"
    OPTIONS="--big-boot"
}

SUITE_default() {
    DESCRIPTION="64-bit Ubuntu + Debian (normal/big-boot)"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="ubuntu debian"
    ARCHS="x86_64"
    TYPES="t2.micro"
    OPTIONS="none --big-boot"
}

SUITE_distros() {
    DESCRIPTION="64-bit test for each supported distro"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="precise trusty utopic vivid squeeze wheezy jessie"
    ARCHS="x86_64"
    TYPES="t1.micro t2.micro"
    OPTIONS="none"
}

SUITE_failure() {
    DESCRIPTION="A failure to care about"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="jessie"
    ARCHS="i386"
    TYPES="t2.micro"
    OPTIONS="none"
}

SUITE_newtype() {
    DESCRIPTION="The 32 current generation instance types"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="trusty"
    ARCHS="x86_64"
    TYPES="t2.micro    t2.small    t2.medium   m3.medium   m3.large
           m3.xlarge   m3.2xlarge  c4.large    c4.xlarge   c4.2xlarge
           c4.4xlarge  c4.8xlarge  c3.large    c3.xlarge   c3.2xlarge
           c3.4xlarge  c3.8xlarge  r3.large    r3.xlarge   r3.2xlarge
           r3.4xlarge  r3.8xlarge  i2.xlarge   i2.2xlarge  i2.4xlarge
           i2.8xlarge  d2.xlarge   d2.2xlarge  d2.4xlarge  d2.8xlarge
           g2.2xlarge  g2.8xlarge"
    OPTIONS="none"
}

SUITE_oldtype() {
    DESCRIPTION="The 15 older generation instance types"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="trusty"
    ARCHS="x86_64"
    TYPES="t1.micro    m1.small    m1.medium   m1.large    m1.xlarge
           c1.medium   c1.xlarge   cc2.8xlarge m2.xlarge   m2.2xlarge
           m2.4xlarge  cr1.8xlarge hi1.4xlarge hs1.8xlarge cg1.4xlarge"
    OPTIONS="none"
}

SUITE_regions() {
    DESCRIPTION="64-bit test for each available region"
    REGIONS="ap-northeast-1  ap-southeast-1  ap-southeast-2
             eu-central-1    eu-west-1       sa-east-1
             us-east-1       us-west-1       us-west-2"
    PLATFORMS="trusty"
    TARGETS="trusty"
    ARCHS="x86_64"
    TYPES="t2.micro"
    OPTIONS="none"
}

SUITE_release() {
    DESCRIPTION="The official Encroot release suite"
    REGIONS="us-east-1 ap-northeast-1 eu-central-1"
    PLATFORMS="trusty"
    TARGETS="precise trusty utopic vivid squeeze wheezy jessie"
    ARCHS="i386 x86_64"
    TYPES="t1.micro t2.micro"
    OPTIONS="none --big-boot"
}

SUITE_trivial() {
    DESCRIPTION="Tests only 64-bit Trusty Tahr"
    REGIONS="us-east-1"
    PLATFORMS="trusty"
    TARGETS="trusty"
    ARCHS="x86_64"
    TYPES="t2.micro"
    OPTIONS="none"
}

###############################################################################
