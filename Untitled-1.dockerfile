scp -i ~/.ssh/dmm-webcamp.pem .env ec2-user@3.112.2.159:gym_navi/

sed -i '/require "fiber"/a require "logger"' /home/ec2-user/gym_navi/vendor/bundle/ruby/3.1.0/gems/activesupport-6.1.7.10/lib/active_support/logger_thread_safe_level.rb

3.112.2.159

rds-mysql-server.cdymuoc4wu33.ap-northeast-1.rds.amazonaws.com

