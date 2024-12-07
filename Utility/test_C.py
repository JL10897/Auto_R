import time
import logging
import sys
from datetime import datetime

# 配置日志
logging.basicConfig(
    filename='sleep_log.txt',
    level=logging.INFO,
    format='%(asctime)s - %(message)s'
)

try:
    hours = 23
    minutes = 0
    seconds = 59
    total_sleep_time = hours * 3600 + minutes * 60 + seconds
    
    logging.info(f"开始休眠: {total_sleep_time}秒")
    start_time = datetime.now()
    
    while (datetime.now() - start_time).total_seconds() < total_sleep_time:
        time.sleep(300)  # 每5分钟检查一次
        current_duration = (datetime.now() - start_time).total_seconds()
        logging.info(f"已运行: {current_duration:.1f}秒")
        
    logging.info("休眠完成")

except Exception as e:
    logging.error(f"发生错误: {str(e)}")
    sys.exit(1)