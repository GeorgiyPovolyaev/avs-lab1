#!/bin/bash -e
# Вариант 4. Выполнять после 02_copy_links.sh.
cd ~/lab0

echo '--- Поиск: пункт 1 ---'
ls -lR | grep '^-' | grep -v 'copy' | sort -k5,5nr | head -n 5

echo '--- Поиск: пункт 2 ---'
grep -rhiE 'баринов|катя' claude_monet arcobaleno | grep -vi 'десерт' | sort | head -n 6

echo '--- Поиск: пункт 3 ---'
grep -l 'блюд' claude_monet/kitchen/* arcobaleno/kitchen/* | wc -l

echo '--- Поиск: пункт 4 ---'
tail -q -n 2 claude_monet/kitchen/*_menu arcobaleno/kitchen/*_menu | grep -iE 'десерт|суп' | sort -r

echo '--- Поиск: пункт 5 ---'
grep -vi 'десерт' claude_monet/tasting_room/menu_comparison | sort -r | head -n 4 | wc -w

echo '--- Поиск: пункт 6 ---'
ls -liR | grep -E '^[[:space:]]*[0-9]+[[:space:]]+-[^[:space:]]+[[:space:]]+2[[:space:]]' | sort -k1,1n

echo '--- Поиск: пункт 7 ---'
grep -hiE 'гост|меню' claude_monet/chef_office/reviews_copy/* | grep -vi 'Елена' | sort | wc -l

echo '--- Удаление: пункты 1–3 ---'
rm arcobaleno/kitchen/katya_recipe
rm arcobaleno/office/chef_recipe
rm rival_kitchen

echo '--- Удаление: пункт 4 ---'
rm critic_visit
ls -li claude_monet/tasting_room/critic_copy
cat claude_monet/tasting_room/critic_copy

echo '--- Удаление: пункт 5 ---'
rm claude_monet/tasting_room/critic_copy

echo '--- Удаление: пункты 6–8 ---'
rm arcobaleno/archive/review_archive
rmdir arcobaleno/archive
rm -r claude_monet/chef_office/reviews_copy

echo '--- Итоговая структура ---'
ls -lR
