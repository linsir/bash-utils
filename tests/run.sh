
rm -f utils.sh
if [ ! -f "utils.sh" ];then
    curl https://raw.githubusercontent.com/linsir/bash-utils/master/utils.sh -o utils.sh
    # chmod +x utils.sh
fi

# locate dir
BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit
CURRENT_DIR=$(pwd)

echo "$CURRENT_DIR/utils.sh"
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
