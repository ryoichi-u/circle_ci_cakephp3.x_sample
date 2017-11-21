IFS=$'\n'; COMMIT_SCA_FILES=($(git diff --name-only --diff-filter=ACMRTUXB origin/master )); unset IFS
./vendor/friendsofphp/php-cs-fixer/php-cs-fixer fix --config=./.php_cs -v --dry-run --diff --allow-risky=yes --path-mode=intersection "${COMMIT_SCA_FILES[@]}"
