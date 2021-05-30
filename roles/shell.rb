name 'shell'
description 'shell server role'
run_list [
    'recipe[base-cookbook]',
    'recipe[shell::default]',
    'recipe[pwnguin::default]',
]
