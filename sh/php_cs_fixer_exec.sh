IFS=$'\n'; COMMIT_SCA_FILES=($(git diff --name-only --diff-filter=ACMRTUXB origin/development )); unset IFS
./vendor/friendsofphp/php-cs-fixer/php-cs-fixer fix --config=./.php_cs -v --allow-risky=yes --path-mode=intersection "${COMMIT_SCA_FILES[@]}"
