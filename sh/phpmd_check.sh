#!/bin/sh

#====================================
# コミットコードの複雑度や不要コード警告する
#====================================
# コミットされるファイルのうち、.phpで終わるものをチェック
#
FILESTRING=`git diff --name-status origin/master -- | grep -E '^[AUM].*\.php$'| cut -c3- | tr '\n' ',' | sed -e 's/,$//g'`

if test "${FILESTRING}"; then
    vendor/bin/phpmd $FILESTRING text codesize,controversial,design,naming,unusedcode
fi
exit 0
