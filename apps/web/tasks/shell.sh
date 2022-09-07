#!/bin/bash

#anwser
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php anwser add" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php anwser add  >>/data/web/backend/public/logs/task/anwser_add_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp anwser add "         
fi

pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php anwser money" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php anwser money  >>/data/web/backend/public/logs/task/anwser_money_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp anwser money "         
fi

#apr
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php apr item" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php apr item  >>/data/web/backend/public/logs/task/apr_item_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp apr item "         
fi

#flow
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php flow flow" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php flow flow >>/data/web/backend/public/logs/task/flow_flow_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp flow flow "         
fi

#funds
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php funds run" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php funds run  >>/data/web/backend/public/logs/task/funds_run_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp funds run "         
fi


#reward
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php reward item" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php reward item  >>/data/web/backend/public/logs/task/reward_item_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp reward item "         
fi

pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php reward invest" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php reward invest  >>/data/web/backend/public/logs/task/reward_invest_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp reward invest "         
fi

#sms
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php sms send" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php sms send  >>/data/web/backend/public/logs/task/sms_send_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp sms send "         
fi


#user
pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php user run" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php user run  >>/data/web/backend/public/logs/task/user_run_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp user run "         
fi

pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php user level" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php user level  >>/data/web/backend/public/logs/task/user_level_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp user level "         
fi

pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php user statis" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php user statis  >>/data/web/backend/public/logs/task/user_statis_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp user statis "         
fi

pid=`ps -ef | grep "/usr/bin/php /data/web/backend/apps/web/bin/cli.php realname real" | grep -v grep`
if [ $? -ne 0 ];then
   /usr/bin/php /data/web/backend/apps/web/bin/cli.php realname real  >>/data/web/backend/public/logs/task/real_name_`date +\%Y\%m\%d`.log 2>&1 &
   timestamp=`date '+%Y-%m-%d %H:%M:%S'`
   echo "$timestamp realname real "         
fi
