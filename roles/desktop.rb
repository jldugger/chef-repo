name 'desktop'
description 'workstation management role'
run_list ['recipe[desktop]','recipe[workstation::kitchen]']

