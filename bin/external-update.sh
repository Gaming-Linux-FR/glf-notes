#!/bin/sh

# README import script by Darkone<contact@darkone.yt>

APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"
TARGET=$APP_ROOT/content/guides/externals

PROJECT=$1
if [[ "$PROJECT" =~ ^https://github.com/.*\.git$ ]] ;then
   echo "Is a git project, continue..."
else
   echo "Not a git project"
   exit 1
fi

PROJECT_ID=`echo $PROJECT | sed 's#.*/\([^/]*\).git$#\1#'`

mkdir -p $APP_ROOT/externals
cd $APP_ROOT/externals
if [ -d $PROJECT_ID ] ;then
  cd $PROJECT_ID
  git pull
else
  git clone $PROJECT
  cd $PROJECT_ID
fi

PROJECT_DIR=$TARGET/$PROJECT_ID
PROJECT_FILE=$PROJECT_DIR/index.md

if [ ! -f "README.md" ] ;then
  echo "No README.md file found"
  exit 1
fi

TITLE=$(cat README.md | head -n 1 | sed 's/^#  *//')
AUTHORS='['`git log \
  | tail -n +2 \
  | grep -e ^Author: \
  | cut -d' ' -f2 \
  | sort | uniq -c | sort -k2 \
  | awk '{printf("\"%s\", ",$2)}END{print}' \
  | sed 's/,[^,]*$//'`']'
FIRST_DATE=`git log --reverse -1 --pretty=format:'%ad' --date=short`
EXTRACTOR=`git config user.name`
NOW_DATE=`date +%d/%m/%Y`

if [[ "$EXTRACTOR" =~ "Darkone" ]] ;then
  EXTRACTOR='['$EXTRACTOR'](https://darkone.yt)'
fi

mkdir -p $PROJECT_DIR

echo '+++' > $PROJECT_FILE
echo 'title = "'$TITLE'"' >> $PROJECT_FILE
echo 'author = '$AUTHORS >> $PROJECT_FILE
echo 'date = '$FIRST_DATE >> $PROJECT_FILE
echo '+++' >> $PROJECT_FILE
echo >> $PROJECT_FILE

cat README.md \
  | sed 's/^<.*>$//g' \
  | sed 's/^\(!\[.*)\), *$/\1/' \
  | tr '\n' '\r' \
  | sed -e 's/\r\r\r\r*/\r\r/g' \
  | tr '\r' '\n' >> $PROJECT_FILE

echo >> $PROJECT_FILE
echo '---' >> $PROJECT_FILE
echo '_Dernier import depuis ['$PROJECT_ID']('$PROJECT') le '$NOW_DATE' par '$EXTRACTOR'_' >> $PROJECT_FILE

rsync -av \
  --exclude '*.md' \
  --exclude '*.sh' \
  --exclude '.git' \
  --exclude LICENCE ./ $PROJECT_DIR/

echo "Done"
