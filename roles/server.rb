name 'server'
description 'Server role'
run_list ['recipe[base-cookbook]',
          'recipe[pwnguin::letsencrypt]',
          'recipe[pwnguin::default]',
]
