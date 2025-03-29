#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

set -e  # Останавливает выполнение скрипта при ошибке

echo "${YELLOW}CONTAINER START SCRIPT RUNNING...${NC}"

# Открываем интерактивную оболочку Bash и выполняем команды внутри неё
/bin/bash -i << EOF

echo "${YELLOW}Переходим в директорию workspace...${NC}"
cd workspace

echo "${YELLOW}Запускаем рвиз...${NC}"
roslaunch core rviz.launch
EOF

# Оставляем терминал открытым после выполнения скрипта
exec /bin/bash
