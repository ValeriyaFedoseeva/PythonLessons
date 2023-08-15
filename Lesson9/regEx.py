import os
import re
import logging
import datetime

now = datetime.datetime.now()
year = '{:02d}'.format(now.year)
month = '{:02d}'.format(now.month)
day = '{:02d}'.format(now.day)
hour = '{:02d}'.format(now.hour)
minute = '{:02d}'.format(now.minute)  # Changed from 'min' to 'minute'

ROOT = os.path.dirname(__file__)
log_file = os.path.join(ROOT, 'Logs', '{0}_{1}_{2}_{3}_{4}_maya.log'.format(year, month, day, hour, minute)) 
path = "C:/Users/Valeriya/Documents/GitHub/PythonLessons/Lesson9/codeFile.txt"

logger = logging.getLogger()
logger.setLevel(logging.INFO)
for hnd in logger.handlers:
    print("Removing {} handler".format(hnd))
    logger.removeHandler(hnd)

file_handler = logging.FileHandler(log_file, mode="w")
file_handler_format = logging.Formatter('[%(module)s.%(funcName)s.%(lineno)d.]%(levelname)s:%(message)s') 
file_handler.setFormatter(file_handler_format)
logger.addHandler(file_handler)

def main():
    logger.info("RESULT DATA")

    formula = re.compile("^[+-]?(?!0{2,})(?:\d{1,6}|0)$") # [[+-] can start with + or -] [(?!0{2,}) to make that there are no two or more consecutive zeros.] [(?:\d{1,6}|0)  to handle numbers with up to six digits or the number zero as per your requirements.]


    with open(path, "r") as f:
        text = f.read()

    substrings = text.split()

    for substring in substrings:
        if formula.match(substring):
            logger.info("Matched substring: %s", substring)  # Logging matched substrings
        else:
            logger.debug("No match for substring: %s", substring)  # Logging non-matched substrings

    file_handler.close()
    logger.removeHandler(file_handler)

if __name__ == "__main__":
    main()
