#!/bin/bash

# rm -f utils.sh
if [ ! -f "utils.sh" ];then
    echo "Download utils to $CURRENT_DIR/utils.sh ."
    curl https://raw.githubusercontent.com/linsir/bash-utils/master/utils.sh -o utils.sh
    # chmod +x utils.sh
fi

# locate dir
BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit
CURRENT_DIR=$(pwd)

# source utils
source "${CURRENT_DIR}"/utils.sh
# do something
echo_step  "1. this is the step 1"

log_warnning "this is the warning log message"
log_error "this is the error log message"
# do_exit_0 "the log message before exit 0"
get_today
get_distribution
# get_distribution_version_id
echo $lsb_dist_version_id

if is_user_exists test; then
    echo "test is exists."
elif is_user_exists linsir; then
        echo "linsir is exists."
else
    echo "other"
fi

generate_password 12
