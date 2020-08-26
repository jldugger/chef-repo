name 'server'
description 'Server role'
run_list ['recipe[base-cookbook]',
          'recipe[pwnguin::default]',
          'recipe[pwnguin::database]',
]
