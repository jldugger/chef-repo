name 'server'
description 'Server role'
run_list ['recipe[pwnguin::server]',
          'recipe[pwnguin::default]',
          'recipe[pwnguin::database]',
          'recipe[pwnguin::davical]',
          'recipe[pwnguin::photologue]',
]
